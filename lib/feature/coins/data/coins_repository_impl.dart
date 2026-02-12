import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/core/services/api_service.dart';
import 'package:my_first_app/feature/coins/data/mappers/coin_detail_mapper.dart';
import 'package:my_first_app/feature/coins/data/mappers/coins_mapper.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coin_detail_model.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart';
import 'package:my_first_app/feature/coins/domain/repository/coin_repository.dart';

class CoinsRepositoryImpl extends CoinsRepository {
  final _apiService = locator<ApiService>();

  @override
  Future<GetCoins> getCoins({
    int limit = 10,
    String? cursor,
    String? search,
  }) async {
    final res = await _apiService.coinsApi.getCoins(
      cursor,
      limit,
      search,
    );
    return GetCoins(
      data: res.data.toDomain(),
      pagination: res.pagination.toDomain(),
    );
  }

  @override
  Future<GetCoinDetail> getCoinDetail(String uuid) async {
    final res = await _apiService.coinsApi.getCoinDetail(uuid);
    return GetCoinDetail(data: res.data.toDomain());
  }
}
