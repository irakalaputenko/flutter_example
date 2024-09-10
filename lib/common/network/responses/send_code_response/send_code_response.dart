import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_code_response.freezed.dart';

part 'send_code_response.g.dart';

@freezed
class SendCodeResponse with _$SendCodeResponse {
  @JsonSerializable(
    checked: true,
    explicitToJson: true,
  )
  const factory SendCodeResponse({
    @JsonKey(name: 'result') String? result,
    @JsonKey(name: 'statusCode') String? statusCode,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'isNewUser') bool? isNewUser,
  }) = _SendCodeResponse;

  factory SendCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$SendCodeResponseFromJson(json);
}
