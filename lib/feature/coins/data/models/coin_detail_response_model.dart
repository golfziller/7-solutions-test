import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_first_app/feature/coins/data/models/coins_response_model.dart';

part 'coin_detail_response_model.freezed.dart';
part 'coin_detail_response_model.g.dart';

@freezed
abstract class CoinDetailResponse with _$CoinDetailResponse {
  @JsonSerializable()
  const factory CoinDetailResponse({
    @JsonKey(name: 'data') required CoinDetailData data,
  }) = _CoinDetailResponse;

  factory CoinDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$CoinDetailResponseFromJson(json);
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
