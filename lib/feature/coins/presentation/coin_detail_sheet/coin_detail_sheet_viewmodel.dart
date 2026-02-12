import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart';
import 'package:my_first_app/feature/coins/domain/usecase/get_coin_detail_usecase.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

class CoinDetailSheetViewModel extends BaseViewModel {
  final _getDetailUseCase = locator<GetCoinDetailUsecase>();
  Coin? get coin => _coin;

  Coin? _coin;

  Future<void> initialData(SheetRequest request) async {
    if (request.data is String) {
      String uuid = request.data as String;
      setBusy(true);
      final res = await _getDetailUseCase.execute(uuid);
      if (res.isSuccess) {
        final value = res.getValueSuccess().data;
        _coin = value.coin;
        rebuildUi();
      }
      setBusy(false);
    }
  }

  Future<void> openLink(String url) async {
    final canLaunch = await canLaunchUrl(Uri.parse(url));
    if (canLaunch) {
      await launchUrl(Uri.parse(url));
    } else {
      print('Could not launch $url');
    }
  }
}
