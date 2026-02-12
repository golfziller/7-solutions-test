// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_coins_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCoins _$GetCoinsFromJson(Map<String, dynamic> json) => _GetCoins(
      data: CoinData.fromJson(json['data'] as Map<String, dynamic>),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetCoinsToJson(_GetCoins instance) => <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_CoinData _$CoinDataFromJson(Map<String, dynamic> json) => _CoinData(
      stats: CoinStats.fromJson(json['stats'] as Map<String, dynamic>),
      coins: (json['coins'] as List<dynamic>)
          .map((e) => Coin.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoinDataToJson(_CoinData instance) => <String, dynamic>{
      'stats': instance.stats,
      'coins': instance.coins,
    };

_Coins _$CoinsFromJson(Map<String, dynamic> json) => _Coins(
      uuid: json['uuid'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String,
      marketCap: json['marketCap'] as String,
      price: json['price'] as String,
      change: json['change'] as String,
      color: json['color'] as String?,
      description: json['description'] as String?,
      websiteUrl: json['websiteUrl'] as String?,
      rank: (json['rank'] as num).toInt(),
    );

Map<String, dynamic> _$CoinsToJson(_Coins instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'symbol': instance.symbol,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
      'marketCap': instance.marketCap,
      'price': instance.price,
      'change': instance.change,
      'color': instance.color,
      'description': instance.description,
      'websiteUrl': instance.websiteUrl,
      'rank': instance.rank,
    };

_CoinStats _$CoinStatsFromJson(Map<String, dynamic> json) => _CoinStats(
      total: (json['total'] as num).toInt(),
      totalCoins: (json['totalCoins'] as num).toInt(),
      totalMarkets: (json['totalMarkets'] as num).toInt(),
      totalExchanges: (json['totalExchanges'] as num).toInt(),
      totalMarketCap: json['totalMarketCap'] as String,
      total24hVolume: json['total24hVolume'] as String,
    );

Map<String, dynamic> _$CoinStatsToJson(_CoinStats instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalCoins': instance.totalCoins,
      'totalMarkets': instance.totalMarkets,
      'totalExchanges': instance.totalExchanges,
      'totalMarketCap': instance.totalMarketCap,
      'total24hVolume': instance.total24hVolume,
    };

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
      limit: (json['limit'] as num).toInt(),
      hasNextPage: json['hasNextPage'] as bool,
      hasPreviousPage: json['hasPreviousPage'] as bool,
      nextCursor: json['nextCursor'] as String?,
      previousCursor: json['previousCursor'] as String?,
    );

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'nextCursor': instance.nextCursor,
      'previousCursor': instance.previousCursor,
    };
