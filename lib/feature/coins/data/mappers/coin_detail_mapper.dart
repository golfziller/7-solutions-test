import 'package:my_first_app/feature/coins/data/mappers/coins_mapper.dart';
import 'package:my_first_app/feature/coins/data/models/coin_detail_response_model.dart'
    as data;
import 'package:my_first_app/feature/coins/domain/models/get_coin_detail_model.dart'
    as domain;

extension CoinDetailMapper on data.CoinDetailData {
  domain.CoinDetailData toDomain() {
    return domain.CoinDetailData(
      coin: coin.toDomain(),
    );
  }
}
