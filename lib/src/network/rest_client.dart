import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:vandal/domain/dto/login_dto/login_dto.dart';
import 'package:vandal/domain/dto/registen_by_phone_dto/register_by_phone_dto.dart';
import 'package:vandal/domain/responses/send_code_response/send_code_response.dart';
import 'package:vandal/domain/responses/token_response/token_response.dart';
import 'package:vandal/utils/app_constants.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: AppConst.liveUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  /// Auth
  @POST('/auth/send-verify-code')
  Future<SendCodeResponse?> registerByPhone({
    @Body() required RegisterByPhoneDto dto,
  });

  @POST('/auth/login')
  Future<TokenResponse?> login({
    @Body() required LoginDto dto,
  });
}
