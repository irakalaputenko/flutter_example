import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vandal/domain/dto/login_dto/login_dto.dart';
import 'package:vandal/domain/dto/registen_by_phone_dto/register_by_phone_dto.dart';
import 'package:vandal/domain/responses/send_code_response/send_code_response.dart';
import 'package:vandal/domain/responses/token_response/token_response.dart';
import 'package:vandal/src/network/rest_client.dart';
import 'package:vandal/src/repositories/base_repository.dart';

@lazySingleton
class AuthRepository extends BaseRepository {
  AuthRepository(Dio dio) : super(restClient: RestClient(dio));

  Future<SendCodeResponse?> sendCode({required RegisterByPhoneDto dto}) async {
    return await api.registerByPhone(
      dto: dto,
    );
  }

  Future<TokenResponse?> login({
    required String phone,
    required String code,
  }) async {
    return await api.login(
      dto: LoginDto(
        phone: phone,
        code: code,
      ),
    );
  }
}
