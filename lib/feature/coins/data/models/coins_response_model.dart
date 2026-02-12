import 'package:freezed_annotation/freezed_annotation.dart';

part 'coins_response_model.freezed.dart';
part 'coins_response_model.g.dart';

@freezed
abstract class CoinsResponse with _$CoinsResponse {
  @JsonSerializable()
  const factory CoinsResponse({
    @JsonKey(name: 'data') required CoinData data,
    @JsonKey(name: 'pagination') required Pagination pagination,
  }) = _CoinsResponse;

  factory CoinsResponse.fromJson(Map<String, dynamic> json) =>
      _$CoinsResponseFromJson(json);
}

@freezed
abstract class CoinData with _$CoinData {
  @JsonSerializable()
  const factory CoinData({
    @JsonKey(name: 'stats') required CoinStats stats,
    @JsonKey(name: 'coins') required List<Coin> coins,
  }) = _CoinData;

  factory CoinData.fromJson(Map<String, dynamic> json) =>
      _$CoinDataFromJson(json);
}

@freezed
abstract class Coin with _$Coin {
  @JsonSerializable()
  const factory Coin({
    @JsonKey(name: 'uuid') required String uuid,
    @JsonKey(name: 'symbol') required String symbol,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'iconUrl') required String iconUrl,
    @JsonKey(name: 'marketCap') required String marketCap,
    @JsonKey(name: 'price') required String price,
    @JsonKey(name: 'change') required String change,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'websiteUrl') String? websiteUrl,
    @JsonKey(name: 'rank') required int rank,
  }) = _Coins;

  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinsFromJson(json);
}

@freezed
abstract class CoinStats with _$CoinStats {
  @JsonSerializable()
  const factory CoinStats({
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'totalCoins') required int totalCoins,
    @JsonKey(name: 'totalMarkets') required int totalMarkets,
    @JsonKey(name: 'totalExchanges') required int totalExchanges,
    @JsonKey(name: 'totalMarketCap') required String totalMarketCap,
    @JsonKey(name: 'total24hVolume') required String total24hVolume,
  }) = _CoinStats;

  factory CoinStats.fromJson(Map<String, dynamic> json) =>
      _$CoinStatsFromJson(json);
}

@freezed
abstract class Pagination with _$Pagination {
  @JsonSerializable()
  const factory Pagination({
    @JsonKey(name: 'limit') required int limit,
    @JsonKey(name: 'hasNextPage') required bool hasNextPage,
    @JsonKey(name: 'hasPreviousPage') required bool hasPreviousPage,
    @JsonKey(name: 'nextCursor') String? nextCursor,
    @JsonKey(name: 'previousCursor') String? previousCursor,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  factory Pagination.empty() {
    return const Pagination(
      limit: 0,
      hasNextPage: false,
      hasPreviousPage: false,
      nextCursor: null,
      previousCursor: null,
    );
  }
}
