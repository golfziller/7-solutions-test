// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../core/services/api_service.dart';
import '../feature/coins/data/coins_repository_impl.dart';
import '../feature/coins/domain/usecase/get_coin_detail_usecase.dart';
import '../feature/coins/domain/usecase/get_coins_usecase.dart';
import '../feature/coins/domain/usecase/share_invite_usecase.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
  final apiService = ApiService();
  await apiService.init();
  locator.registerSingleton(apiService);

  locator.registerLazySingleton(() => CoinsRepositoryImpl());
  locator.registerLazySingleton(() => GetCoinsUsecase());
  locator.registerLazySingleton(() => ShareInviteUsecase());
  locator.registerLazySingleton(() => GetCoinDetailUsecase());
}
