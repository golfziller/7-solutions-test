import 'package:dio/dio.dart';
import 'package:my_first_app/feature/coins/data/coins_api.dart';

const int _connectTimeout = 60;
const int _receiveTimeout = 60;
const String _baseUrl = 'https://api.coinranking.com'; //should to  move to .env

class ApiService {
  final Dio _dio = Dio();

  CoinsApi get coinsApi => _coinsApi;

  late CoinsApi _coinsApi;

  Future<void> init() async {
    _dio.options = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: _connectTimeout),
      receiveTimeout: const Duration(seconds: _receiveTimeout),
      headers: {'Content-Type': 'application/json'},
    );
    _dio.interceptors.add(LogInterceptor());

    _coinsApi = CoinsApi(_dio, baseUrl: _baseUrl);
  }
}
