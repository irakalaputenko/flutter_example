import 'package:injectable/injectable.dart';
import 'package:vandal/common/service/service_session.dart';

@injectable
class AuthService {
  AuthService({
    required AuthApi authApi,
    required SessionService sessionService,
  })  : _authApi = authApi,
        _sessionService = sessionService;

  final AuthApi _authApi;
  final SessionService _sessionService;

  Future<AccessTokenResponse> register(
      {required RegisterRequest request}) async {
    final response = await _authApi.register(request: request);
    await _sessionService.openSession(
      token: response.accessToken,
      msisdn: request.msisdn,
    );
    return response;
  }

  Future<AccessTokenResponse> login({
    required String msisdn,
    required LoginRequest request,
  }) async {
    final response = await _authApi.login(msisdn: msisdn, request: request);

    await _sessionService.openSession(
      token: response.accessToken,
      msisdn: msisdn,
    );
    return response;
  }

  Future<void> logout() async {
    // uncomment if need to wait for a response
    /*await*/
    _authApi.logout(
      msisdn: _sessionService.msisdn!,
      accessToken: _sessionService.bearerToken!,
    );
    await _sessionService.logout();
    return;
  }

  Future<DeviceCheckResponse> checkDevice({required String msisdn}) =>
      _authApi.checkDevice(msisdn: msisdn);

  Future<VerifyOtpResponse> verifyOTP({
    required String msisdn,
    required VerifyOtpRequest request,
  }) =>
      _authApi.verifyOTP(msisdn: msisdn, request: request);

  Future<AccessTokenResponse> changePasscode({
    required String msisdn,
    required ChangePasscodeRequest request,
  }) async {
    final response =
        await _authApi.changePasscode(msisdn: msisdn, request: request);

    _sessionService.updateSession(response.accessToken);
    return response;
  }
}
