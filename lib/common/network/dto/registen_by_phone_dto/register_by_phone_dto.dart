import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_by_phone_dto.freezed.dart';

part 'register_by_phone_dto.g.dart';

@freezed
class RegisterByPhoneDto with _$RegisterByPhoneDto {
  @JsonSerializable(
    checked: true,
    explicitToJson: true,
  )
  const factory RegisterByPhoneDto({
    @JsonKey(name: 'phone', required: true) required String phone,
  }) = _RegisterByPhoneDto;

  factory RegisterByPhoneDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterByPhoneDtoFromJson(json);
}
