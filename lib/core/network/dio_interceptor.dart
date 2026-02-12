import 'dart:io';

import 'package:dio/dio.dart';

class CustomInterceptors extends Interceptor {
  CustomInterceptors({
    required this.dio,
  });
  Dio dio;
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.validateStatus = (status) => (status != null &&
        status >= HttpStatus.ok &&
        status < HttpStatus.badRequest);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final body = response.data;

    if (body is Map && body['status'] == 'success') {
      response.data = body['data'];
    }
    super.onResponse(response, handler);
  }
}
