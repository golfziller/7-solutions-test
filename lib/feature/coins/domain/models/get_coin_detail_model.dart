import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart';

part 'get_coin_detail_model.freezed.dart';
part 'get_coin_detail_model.g.dart';

@freezed
abstract class GetCoinDetail with _$GetCoinDetail {
  @JsonSerializable()
  const factory GetCoinDetail({
    @JsonKey(name: 'data') required CoinDetailData data,
  }) = _GetCoinDetail;

  factory GetCoinDetail.fromJson(Map<String, dynamic> json) =>
      _$GetCoinDetailFromJson(json);
}

@freezed
abstract class CoinDetailData with _$CoinDetailData {
  @JsonSerializable()
  const factory CoinDetailData({
    @JsonKey(name: 'coin') required Coin coin,
  }) = _CoinDetailData;

  factory CoinDetailData.fromJson(Map<String, dynamic> json) =>
      _$CoinDetailDataFromJson(json);
}
