import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_app/app/app.bottomsheets.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart';
import 'package:my_first_app/feature/coins/domain/usecase/get_coins_usecase.dart';
import 'package:my_first_app/feature/coins/domain/usecase/share_invite_usecase.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

enum InitState { loading, error, ready }

enum SearchState { idle, loading, error }

enum LoadMoreState { idle, loading, error }

class CoinListViewModel extends FutureViewModel {
  final _getCoinsUseCase = locator<GetCoinsUsecase>();
  final _shareInviteUsecase = locator<ShareInviteUsecase>();
  final _bottomSheetService = locator<BottomSheetService>();
  final int _topCount = 3;

  ScrollController get controller => _controller;
  List<Coin> get coins => _coins;
  List<Coin> get topCoins => _topCoins;
  LoadMoreState get loadMoreState => _loadMoreState;
  String get search => _search;
  InitState get initState => _initState;
  SearchState get searchState => _searchState;

  InitState _initState = InitState.loading;
  SearchState _searchState = SearchState.idle;
  final List<Coin> _coins = [];
  final List<Coin> _topCoins = [];
  final _controller = ScrollController();
  Pagination _pagination = Pagination.empty();
  LoadMoreState _loadMoreState = LoadMoreState.idle;
  String _search = '';
  Timer? _debounce;

  Future<void> initialData() async {
    _initState = InitState.loading;
    rebuildUi();
    final isLoadPass = await loadCoins();
    if (!isLoadPass) {
      _initState = InitState.error;
      rebuildUi();
      return;
    }
    if (!controller.hasClients) {
      await loadMore();
    }
    _initState = InitState.ready;
    rebuildUi();
  }

  Future onSearchChanged(String value) async {
    _search = value;
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () async {
      _coins.clear();
      _topCoins.clear();
      _pagination = Pagination.empty();
      _loadMoreState = LoadMoreState.idle;

      _searchState = SearchState.loading;
      rebuildUi();
      final isLoadingPass = await loadCoins();
      if (!isLoadingPass) {
        _searchState = SearchState.error;
        rebuildUi();
      } else {
        if (!controller.hasClients) {
          await loadMore();
        }
        _searchState = SearchState.idle;
        rebuildUi();
      }
    });
  }

  Future<void> loadMore({bool isRetry = false}) async {
    if (isRetry && _loadMoreState == LoadMoreState.error) {
      _loadMoreState = LoadMoreState.idle;
      rebuildUi();
    }
    if (_loadMoreState == LoadMoreState.loading ||
        !_pagination.hasNextPage ||
        _loadMoreState == LoadMoreState.error) {
      return;
    }
    _loadMoreState = LoadMoreState.loading;
    rebuildUi();

    final isLoadPass = await loadCoins();
    if (!isLoadPass) {
      _loadMoreState = LoadMoreState.error;
      rebuildUi();
    } else {
      _loadMoreState = LoadMoreState.idle;
      rebuildUi();
    }
  }

  Future<bool> loadCoins() async {
    final result = await _getCoinsUseCase.execute(
        _pagination.nextCursor, _pagination.limit, search);
    if (result.isSuccess) {
      final value = result.getValueSuccess();
      if (_topCoins.isEmpty && value.data.coins.isNotEmpty && search.isEmpty) {
        //Default order by market cap

        _topCoins.addAll(value.data.coins.take(_topCount));
        _coins.addAll(value.data.coins.skip(_topCount));
      } else {
        _coins.addAll(value.data.coins);
      }

      _pagination = value.pagination;
      rebuildUi();
      return true;
    } else {
      return false;
    }
  }

  Future onShareInvite() async {
    await _shareInviteUsecase.execute();
  }

  Future<void> onRefresh() async {
    _coins.clear();
    _pagination = Pagination.empty();
    _loadMoreState = LoadMoreState.idle;
    _initState = InitState.loading;

    rebuildUi();
    final isLoadingPass = await loadCoins();
    if (!isLoadingPass) {
      _initState = InitState.error;
      rebuildUi();
    } else {
      _initState = InitState.ready;
      rebuildUi();
    }
  }

  Future<void> onTapShowDetail(String uuid) async {
    await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.coinDetail, data: uuid);
  }

  void _addControllerListener() {
    controller.addListener(() {
      if (controller.position.pixels >=
          controller.position.maxScrollExtent - 200) {
        loadMore();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Future<void> futureToRun() async {
    _addControllerListener();
    await initialData();
  }
}
