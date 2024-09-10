import 'package:vandal/domain/responses/send_code_response/send_code_response.dart';
import 'package:vandal/domain/responses/token_response/token_response.dart';

abstract class AuthService {
  Future<SendCodeResponse?> sendCode({
    required String phone,
  });

  Future<TokenResponse?> login({
    required String phone,
    required String code,
  });
}
