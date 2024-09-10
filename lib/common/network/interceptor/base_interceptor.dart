import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:vandal/common/constants/app_http_headers.dart';
import 'package:vandal/common/service/device_info.dart';
import 'package:vandal/common/service/translation_service.dart';

@injectable
class BaseInterceptor extends Interceptor {
  BaseInterceptor({
    required this.deviceInfoProvider,
    required this.requestIdProvider,
    required this.translationService,
  });

  final DeviceInfoProvider deviceInfoProvider;
  final RequestIdProvider requestIdProvider;
  final TranslationService translationService;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final deviceInfo = deviceInfoProvider.info;
    options.headers[AppHttpHeaders.language] = translationService.locale;
    options.headers[AppHttpHeaders.deviceId] = deviceInfo.deviceId;
    options.headers[AppHttpHeaders.deviceOs] = deviceInfo.deviceOs;
    options.headers[AppHttpHeaders.requestId] =
        requestIdProvider.nextUniqueRequestId;
    handler.next(options);
  }
}

@singleton
class RequestIdProvider {
  final _requestUuidPrefix = const Uuid().v1();
  int _requestCount = 0;

  String get nextUniqueRequestId => '$_requestUuidPrefix:${_requestCount++}';
}
