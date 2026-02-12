import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart';
import 'package:my_first_app/feature/coins/presentation/coin_list/coin_list_viewmodel.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/card_coin.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/card_invite_friend.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/no_coins_found.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/something_wentwrong.dart';

class RefreshAndListviewCoin extends StatelessWidget {
  final CoinListViewModel viewModel;

  const RefreshAndListviewCoin({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    if (viewModel.coins.isEmpty) {
      return const NoCoinsFound();
    }

    return RefreshIndicator(
      onRefresh: viewModel.onRefresh,
      notificationPredicate: (_) => viewModel.search.isEmpty,
      child: ListView.separated(
        controller: viewModel.controller,
        itemCount: _itemCount,
        separatorBuilder: (_, __) => const Divider(
          thickness: 1,
          height: 1,
          indent: 72,
        ),
        itemBuilder: _buildItem,
      ),
    );
  }

  int _inviteCount(int coinLength) {
    int count = 0;
    int position = 5;

    while (position <= coinLength + count) {
      count++;
      position *= 2;
    }

    return count;
  }

  int get _itemCount {
    final invite = _inviteCount(viewModel.coins.length);
    final loadMore = _shouldShowLoadMore ? 1 : 0;

    return viewModel.coins.length + invite + loadMore;
  }

  bool get _shouldShowLoadMore =>
      viewModel.loadMoreState == LoadMoreState.loading ||
      viewModel.loadMoreState == LoadMoreState.error;

  Widget _buildItem(BuildContext context, int index) {
    if (_isLoadMoreIndex(index)) {
      return _buildLoadMore();
    }

    if (_shouldInsertInvite(index)) {
      return CardInviteFriend(
        onTap: viewModel.onShareInvite,
      );
    }

    final coin = _getCoin(index);

    return GestureDetector(
      onTap: () => viewModel.onTapShowDetail(coin.uuid),
      child: CardCoin(coin: coin),
    );
  }

  bool _isLoadMoreIndex(int index) {
    final invite = _inviteCount(viewModel.coins.length);
    final loadMoreIndex = viewModel.coins.length + invite;

    return _shouldShowLoadMore && index == loadMoreIndex;
  }

  bool _shouldInsertInvite(int index) {
    final position = index + 1;

    int invitePos = 5;

    while (invitePos <= position) {
      if (invitePos == position) return true;
      invitePos *= 2;
    }

    return false;
  }

  int _getRealIndex(int index) {
    int inserted = 0;
    int invitePos = 5;

    while (invitePos <= index + 1) {
      inserted++;
      invitePos *= 2;
    }

    return index - inserted;
  }

  Coin _getCoin(int index) {
    final realIndex = _getRealIndex(index);
    return viewModel.coins[realIndex];
  }

  Widget _buildLoadMore() {
    if (viewModel.loadMoreState == LoadMoreState.error) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Center(
          child: SomethingWentwrong(
            onRetry: () => viewModel.loadMore(isRetry: true),
          ),
        ),
      );
    }

    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
