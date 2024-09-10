import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vandal/common/constants/config.dart';
import 'package:vandal/common/constants/dependency_name.dart';
import 'package:vandal/common/network/interceptor/auth_interceptor.dart';
import 'package:vandal/common/network/interceptor/error_interceptor.dart';
import 'package:vandal/common/network/interceptor/logger_interceptor.dart';
import 'package:vandal/common/network/network_manager.dart';

@module
abstract class ApiModule {
  @Named(DependencyName.cdn)
  Dio cdn(
    Config config,
    LoggerInterceptor logInterceptor,
  ) =>
      NetworkManager.getApiDioClient(
        baseUrl: config.cdnUrl,
        interceptors: [
          logInterceptor,
        ],
      );

  @Named(DependencyName.noAuthDio)
  Dio noAuthDio(
    Config config,
    BaseInterceptor baseInterceptor,
    LoggerInterceptor logInterceptor,
    ErrorInterceptor errorInterceptor,
  ) =>
      NetworkManager.getApiDioClient(
        baseUrl: config.authUrl,
        interceptors: [
          baseInterceptor,
          logInterceptor,
          errorInterceptor,
        ],
      );

  Dio authDio(
    Config config,
    BaseInterceptor baseInterceptor,
    AuthInterceptor authInterceptor,
    LoggerInterceptor logInterceptor,
    ErrorInterceptor errorInterceptor,
  ) =>
      NetworkManager.getApiDioClient(
        baseUrl: config.baseUrl,
        interceptors: [
          baseInterceptor,
          authInterceptor,
          logInterceptor,
          errorInterceptor,
        ],
      );
}
