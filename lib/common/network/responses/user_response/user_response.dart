import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';

part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  @JsonSerializable(
    checked: true,
    explicitToJson: true,
  )
  const factory UserResponse({
    @JsonKey(name: 'contact_id') String? contactId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'second_name') String? secondName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'birthdate') String? birthdate,
    @JsonKey(name: 'cashback') int? cashback,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'email') String? email,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
