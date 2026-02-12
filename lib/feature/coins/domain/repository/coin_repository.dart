import 'package:my_first_app/feature/coins/domain/models/get_coin_detail_model.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart';

abstract class CoinsRepository {
  Future<GetCoins> getCoins({int limit = 10, String? cursor, String? search});
  Future<GetCoinDetail> getCoinDetail(String uuid);
}
