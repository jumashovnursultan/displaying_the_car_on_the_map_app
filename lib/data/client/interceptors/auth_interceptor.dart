import 'dart:io';

import 'package:dio/dio.dart';

import '../../storage/local_storage.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({required LocalStorage storage}) : _storage = storage;

  final LocalStorage _storage;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_storage.token?.access.isNotEmpty == true) {
      options.headers[HttpHeaders.authorizationHeader] =
          'Bearer ${_storage.token?.access}';
    }

    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    try {
      final statusCode = err.response?.statusCode;
      if (statusCode == 401 && _storage.token != null) {
        _storage.token = null;
        // retry request
        handler.resolve(
          err.response ?? Response(requestOptions: err.requestOptions),
        );
      } else {
        handler.next(err);
      }
    } catch (e) {
      handler.next(err);
    }
  }
}
