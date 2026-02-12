import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/core/theme/app_colors.dart';
import 'package:my_first_app/core/ui/ui_helpers.dart';
import 'package:my_first_app/feature/coins/presentation/coin_list/coin_list_viewmodel.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/card_coin_top.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/input_search.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/refresh_and_listview_coin.dart';
import 'package:my_first_app/feature/coins/presentation/widgets/something_wentwrong.dart';
import 'package:stacked/stacked.dart';

class CoinListView extends StackedView<CoinListViewModel> {
  const CoinListView({super.key});
  final double _paddingHorizontal = 8.0;
  @override
  Widget builder(
      BuildContext context, CoinListViewModel viewModel, Widget? child) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppBaseColors.secondary3Light,
        body: SafeArea(
          child: _buildBody(context, viewModel),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, CoinListViewModel viewModel) {
    if (viewModel.initState == InitState.loading) {
      return const Center(child: CupertinoActivityIndicator());
    }

    if (viewModel.initState == InitState.error) {
      return Center(
        child: SomethingWentwrong(
          onRetry: viewModel.initialData,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildSearchBar(viewModel),
        Expanded(
          child: _buildSearchSection(viewModel),
        ),
      ],
    );
  }

  Widget _buildSearchBar(CoinListViewModel viewModel) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _paddingHorizontal),
      child: InputSearch(
        onChanged: viewModel.onSearchChanged,
      ),
    );
  }

  Widget _buildSearchSection(CoinListViewModel viewModel) {
    if (viewModel.searchState == SearchState.loading) {
      return const Center(child: CupertinoActivityIndicator());
    }

    if (viewModel.searchState == SearchState.error) {
      return Center(
        child: SomethingWentwrong(
          onRetry: () => viewModel.onSearchChanged(viewModel.search),
        ),
      );
    }

    return Column(
      children: [
        vSpace4,
        CardCoinTop(
          onTap: viewModel.onTapShowDetail,
          coins: viewModel.topCoins,
          visible: viewModel.search.isNotEmpty,
        ),
        vSpace16,
        Expanded(
          child: RefreshAndListviewCoin(
            viewModel: viewModel,
          ),
        ),
      ],
    );
  }

  @override
  CoinListViewModel viewModelBuilder(BuildContext context) {
    return CoinListViewModel();
  }
}
