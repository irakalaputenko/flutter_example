import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vandal/common/constants/app_http_headers.dart';
import 'package:vandal/common/service/service_session.dart';

@injectable
class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    required this.sessionService,
  });

  final SessionService sessionService;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final accessToken = sessionService.bearerToken;
    if (accessToken != null) {
      options.headers[AppHttpHeaders.authorization] =
          sessionService.bearerToken;
    }
    handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      sessionService.closeSession();
    }

    super.onError(err, handler);
  }
}
