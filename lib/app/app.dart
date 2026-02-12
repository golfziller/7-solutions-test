import 'package:my_first_app/core/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:my_first_app/feature/coins/data/coins_repository_impl.dart';
import 'package:my_first_app/feature/coins/domain/usecase/get_coin_detail_usecase.dart';
import 'package:my_first_app/feature/coins/domain/usecase/get_coins_usecase.dart';
import 'package:my_first_app/feature/coins/domain/usecase/share_invite_usecase.dart';
import 'package:my_first_app/feature/coins/presentation/coin_list/coin_list_view.dart';
import 'package:my_first_app/feature/coins/presentation/coin_detail_sheet/coin_detail_sheet.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_first_app/core/services/api_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: CoinListView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    InitializableSingleton(classType: ApiService),
    LazySingleton(classType: CoinsRepositoryImpl),
    LazySingleton(classType: GetCoinsUsecase),
    LazySingleton(classType: ShareInviteUsecase),
    LazySingleton(classType: GetCoinDetailUsecase),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: CoinDetailSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
