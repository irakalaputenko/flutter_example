import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.freezed.dart';

part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  @JsonSerializable(
    checked: true,
    explicitToJson: true,
  )
  const factory LoginDto({
    @JsonKey(name: 'phone', required: true) required String phone,
    @JsonKey(name: 'code', required: true) required String code,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}
