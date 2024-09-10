import 'package:dio/dio.dart';

abstract class ApiException {
  const ApiException();
}

class BaseApiException extends DioError implements ApiException {
  BaseApiException({
    required DioError dioError,
    required this.errorCode,
    this.details,
  }) : super(
          requestOptions: dioError.requestOptions,
          response: dioError.response,
          type: dioError.type,
          error: dioError.error,
        );

  /// Server-specific error code
  final String errorCode;

  /// Detailed debug info.
  final String? details;

  /// Debug message
  @override
  String get message => details?.toString() ?? error?.toString() ?? '';

  @override
  String toString() => 'BaseApiException{error: $error, details: $details}';

  factory BaseApiException.parse(
    DioError err, {
    bool hasConnection = false,
  }) {
    if (!hasConnection) {
      return NetworkConnectionException(dioError: err);
    }

    if (err.response?.data is Map) {
      final errorType = err.response!.data['error'];
      final errorDetails = err.response!.data['details'];
      final data = err.response!.data['data'];

      switch (errorType) {
        case 'invalid-request':
          return InvalidRequestException(
            dioError: err,
            details: errorDetails,
          );
        case 'invalid-device-token':
          return InvalidDeviceTokenException(
            dioError: err,
            details: errorDetails,
          );
        case 'invalid-passcode':
          final remainingAttempts = data['remaining-attempts'] ?? 0;
          return InvalidPasscodeException(
            dioError: err,
            details: errorDetails,
            remainingAttempts: remainingAttempts,
          );
        case 'max-login-attempts-reached':
          final retryAfterSeconds = data['retry-after-seconds'] ?? 0;
          return MaxLoginAttemptsReachedException(
            dioError: err,
            details: errorDetails,
            retryAfterSeconds: retryAfterSeconds,
          );
        case 'untrusted-device':
          return UntrustedDeviceException(
            dioError: err,
            details: errorDetails,
          );
        case 'user-exists':
          return UserExistsException(
            dioError: err,
            details: errorDetails,
          );
        case 'account-exist':
          return AccountExistException(
            dioError: err,
            details: errorDetails,
          );
        case 'risky-taxpayer':
          return RiskyTaxpayerException(
            dioError: err,
            details: errorDetails,
          );
        case 'underage-user':
          return UnderageUserException(
            dioError: err,
            details: errorDetails,
          );
        case 'user-unauthenticated':
          return UserUnauthenticatedException(
            dioError: err,
            details: errorDetails,
          );
        case 'user-unauthorized':
          return UserUnauthorizedException(
            dioError: err,
            details: errorDetails,
          );
        case 'otp-limit-exceeded':
          final expirationTime = DateTime.fromMillisecondsSinceEpoch(
              (data['expiration-time'] ?? 0) * 1000);
          return OtpLimitExceededException(
            dioError: err,
            details: errorDetails,
            expirationTime: expirationTime,
          );
        case 'otp-invalid':
          return OtpInvalidException(
            dioError: err,
            details: errorDetails,
          );
        case 'device-already-trusted':
          return DeviceAlreadyTrustedException(
            dioError: err,
            details: errorDetails,
          );
        case 'not-found':
          return NotFoundException(
            dioError: err,
            details: errorDetails,
          );
        case 'user-missing':
          return UserMissingException(
            dioError: err,
            details: errorDetails,
          );
        default:
          return BaseApiException(
            dioError: err,
            errorCode: errorType,
            details: errorDetails,
          );
      }
    }

    return BaseApiException(
      dioError: err,
      errorCode: 'unknown',
      details: 'Unknown error',
    );
  }
}

class NetworkConnectionException extends BaseApiException {
  NetworkConnectionException({
    required super.dioError,
    super.errorCode = 'network-connection',
    super.details,
  });
}

class InvalidRequestException extends BaseApiException {
  InvalidRequestException({
    required super.dioError,
    super.errorCode = 'invalid-request',
    super.details,
  });
}

class InvalidDeviceTokenException extends BaseApiException {
  InvalidDeviceTokenException({
    required super.dioError,
    super.errorCode = 'invalid-device-token',
    super.details,
  });
}

class UntrustedDeviceException extends BaseApiException {
  UntrustedDeviceException({
    required super.dioError,
    super.errorCode = 'untrusted-device',
    super.details,
  });
}

class InvalidPasscodeException extends BaseApiException {
  InvalidPasscodeException({
    required super.dioError,
    required this.remainingAttempts,
    super.errorCode = 'invalid-passcode',
    super.details,
  });

  final int remainingAttempts;
}

class MaxLoginAttemptsReachedException extends BaseApiException {
  MaxLoginAttemptsReachedException({
    required super.dioError,
    required this.retryAfterSeconds,
    super.errorCode = 'max-login-attempts-reached',
    super.details,
  });

  /// A user is blocked, will be unblocked after [retryAfterSeconds].
  final int retryAfterSeconds;
}

class UserMissingException extends BaseApiException {
  UserMissingException({
    required super.dioError,
    super.errorCode = 'user-missing',
    super.details,
  });
}

class UserExistsException extends BaseApiException {
  UserExistsException({
    required super.dioError,
    super.errorCode = 'user-exists',
    super.details,
  });
}

class AccountExistException extends BaseApiException {
  AccountExistException({
    required super.dioError,
    super.errorCode = 'account-exist',
    super.details,
  });
}

class RiskyTaxpayerException extends BaseApiException {
  RiskyTaxpayerException({
    required super.dioError,
    super.errorCode = 'risky-taxpayer',
    super.details,
  });
}

class UnderageUserException extends BaseApiException {
  UnderageUserException({
    required super.dioError,
    super.errorCode = 'underage-user',
    super.details,
  });
}

class UserUnauthenticatedException extends BaseApiException {
  UserUnauthenticatedException({
    required super.dioError,
    super.errorCode = 'user-unauthenticated',
    super.details,
  });
}

class UserUnauthorizedException extends BaseApiException {
  UserUnauthorizedException({
    required super.dioError,
    super.errorCode = 'user-unauthorized',
    super.details,
  });
}

class OtpLimitExceededException extends BaseApiException {
  OtpLimitExceededException({
    required super.dioError,
    required this.expirationTime,
    super.errorCode = 'otp-limit-exceeded',
    super.details,
  });

  final DateTime expirationTime;
}

class OtpInvalidException extends BaseApiException {
  OtpInvalidException({
    required super.dioError,
    super.errorCode = 'otp-invalid',
    super.details,
  });
}

class DeviceAlreadyTrustedException extends BaseApiException {
  DeviceAlreadyTrustedException({
    required super.dioError,
    super.errorCode = 'device-already-trusted',
    super.details,
  });
}

class NotFoundException extends BaseApiException {
  NotFoundException({
    required super.dioError,
    super.errorCode = 'not-found',
    super.details,
  });
}
