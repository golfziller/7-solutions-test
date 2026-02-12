// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_coin_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCoinDetail _$GetCoinDetailFromJson(Map<String, dynamic> json) =>
    _GetCoinDetail(
      data: CoinDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetCoinDetailToJson(_GetCoinDetail instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_CoinDetailData _$CoinDetailDataFromJson(Map<String, dynamic> json) =>
    _CoinDetailData(
      coin: Coin.fromJson(json['coin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoinDetailDataToJson(_CoinDetailData instance) =>
    <String, dynamic>{
      'coin': instance.coin,
    };
