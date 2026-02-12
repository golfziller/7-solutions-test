// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoinDetailResponse _$CoinDetailResponseFromJson(Map<String, dynamic> json) =>
    _CoinDetailResponse(
      data: CoinDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoinDetailResponseToJson(_CoinDetailResponse instance) =>
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
