import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vandal/domain/responses/user_response/user_response.dart';

part 'token_response.freezed.dart';

part 'token_response.g.dart';

@freezed
class TokenResponse with _$TokenResponse {
  @JsonSerializable(
    checked: true,
    explicitToJson: true,
  )
  const factory TokenResponse({
    @JsonKey(name: 'statusCode') String? statusCode,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'user') UserResponse? user,
  }) = _TokenResponse;

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);
}
