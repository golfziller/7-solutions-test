import 'package:my_first_app/feature/coins/data/models/coin_detail_response_model.dart';
import 'package:my_first_app/feature/coins/data/models/coins_response_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'coins_api.g.dart';

@RestApi()
abstract class CoinsApi {
  static const String _basePath = '/v2';

  factory CoinsApi(Dio dio, {String baseUrl}) = _CoinsApi;

  @GET("$_basePath/coins")
  Future<CoinsResponse> getCoins(
    @Query("cursor") String? cursor,
    @Query("limit") int limit,
    @Query("search") String? search,
  );
  @GET("$_basePath/coin/{uuid}")
  Future<CoinDetailResponse> getCoinDetail(
    @Path("uuid") String uuid,
  );
}
