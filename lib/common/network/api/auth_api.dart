import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:vandal/common/constants/app_http_headers.dart';
import 'package:vandal/common/constants/dependency_name.dart';
import 'package:vandal/domain/dto/login_dto/login_dto.dart';
import 'package:vandal/domain/responses/send_code_response/send_code_response.dart';
import 'package:vandal/domain/responses/token_response/token_response.dart';

part 'auth_api.g.dart';

@RestApi()
@injectable
abstract class AuthApi {
  @factoryMethod
  factory AuthApi(@Named(DependencyName.noAuthDio) Dio dio) => _AuthApi(dio);

  // @POST('/user')
  // Future<AccessTokenResponse> user({
  //   @Body() required RegisterRequest request,
  // });

  @POST('/auth/login')
  Future<TokenResponse?> verifyOTP({
    @Body() required LoginDto request,
  });

  @POST('/auth/send-verify-code')
  Future<SendCodeResponse?> sendCode({
    @Body() required ChangePasscodeRequest request,
  });
}
