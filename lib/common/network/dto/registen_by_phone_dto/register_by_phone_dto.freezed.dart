// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_by_phone_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterByPhoneDto _$RegisterByPhoneDtoFromJson(Map<String, dynamic> json) {
  return _RegisterByPhoneDto.fromJson(json);
}

/// @nodoc
mixin _$RegisterByPhoneDto {
  @JsonKey(name: 'phone', required: true)
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterByPhoneDtoCopyWith<RegisterByPhoneDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterByPhoneDtoCopyWith<$Res> {
  factory $RegisterByPhoneDtoCopyWith(
          RegisterByPhoneDto value, $Res Function(RegisterByPhoneDto) then) =
      _$RegisterByPhoneDtoCopyWithImpl<$Res, RegisterByPhoneDto>;
  @useResult
  $Res call({@JsonKey(name: 'phone', required: true) String phone});
}

/// @nodoc
class _$RegisterByPhoneDtoCopyWithImpl<$Res, $Val extends RegisterByPhoneDto>
    implements $RegisterByPhoneDtoCopyWith<$Res> {
  _$RegisterByPhoneDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterByPhoneDtoCopyWith<$Res>
    implements $RegisterByPhoneDtoCopyWith<$Res> {
  factory _$$_RegisterByPhoneDtoCopyWith(_$_RegisterByPhoneDto value,
          $Res Function(_$_RegisterByPhoneDto) then) =
      __$$_RegisterByPhoneDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'phone', required: true) String phone});
}

/// @nodoc
class __$$_RegisterByPhoneDtoCopyWithImpl<$Res>
    extends _$RegisterByPhoneDtoCopyWithImpl<$Res, _$_RegisterByPhoneDto>
    implements _$$_RegisterByPhoneDtoCopyWith<$Res> {
  __$$_RegisterByPhoneDtoCopyWithImpl(
      _$_RegisterByPhoneDto _value, $Res Function(_$_RegisterByPhoneDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_RegisterByPhoneDto(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_RegisterByPhoneDto implements _RegisterByPhoneDto {
  const _$_RegisterByPhoneDto(
      {@JsonKey(name: 'phone', required: true) required this.phone});

  factory _$_RegisterByPhoneDto.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterByPhoneDtoFromJson(json);

  @override
  @JsonKey(name: 'phone', required: true)
  final String phone;

  @override
  String toString() {
    return 'RegisterByPhoneDto(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterByPhoneDto &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterByPhoneDtoCopyWith<_$_RegisterByPhoneDto> get copyWith =>
      __$$_RegisterByPhoneDtoCopyWithImpl<_$_RegisterByPhoneDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterByPhoneDtoToJson(
      this,
    );
  }
}

abstract class _RegisterByPhoneDto implements RegisterByPhoneDto {
  const factory _RegisterByPhoneDto(
      {@JsonKey(name: 'phone', required: true)
          required final String phone}) = _$_RegisterByPhoneDto;

  factory _RegisterByPhoneDto.fromJson(Map<String, dynamic> json) =
      _$_RegisterByPhoneDto.fromJson;

  @override
  @JsonKey(name: 'phone', required: true)
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterByPhoneDtoCopyWith<_$_RegisterByPhoneDto> get copyWith =>
      throw _privateConstructorUsedError;
}
