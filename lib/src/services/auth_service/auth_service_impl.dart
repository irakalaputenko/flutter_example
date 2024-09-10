import 'package:injectable/injectable.dart';
import 'package:vandal/domain/dto/registen_by_phone_dto/register_by_phone_dto.dart';
import 'package:vandal/domain/responses/send_code_response/send_code_response.dart';
import 'package:vandal/domain/responses/token_response/token_response.dart';
import 'package:vandal/src/repositories/auth_repository/auth_repository.dart';
import 'package:vandal/src/services/auth_service/auth_service.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  final AuthRepository _authRepository;

  AuthServiceImpl(this._authRepository);

  @override
  Future<SendCodeResponse?> sendCode({
    required String phone,
  }) async {
    final SendCodeResponse? response = await _authRepository.sendCode(
      dto: RegisterByPhoneDto(
        phone: phone,
      ),
    );
    return response;
  }

  @override
  Future<TokenResponse?> login({
    required String phone,
    required String code,
  }) async {
    final TokenResponse? response = await _authRepository.login(
      phone: phone,
      code: code,
    );
    return response;
  }
}
