// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendCodeResponse _$SendCodeResponseFromJson(Map<String, dynamic> json) {
  return _SendCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$SendCodeResponse {
  @JsonKey(name: 'result')
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'statusCode')
  String? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'isNewUser')
  bool? get isNewUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendCodeResponseCopyWith<SendCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCodeResponseCopyWith<$Res> {
  factory $SendCodeResponseCopyWith(
          SendCodeResponse value, $Res Function(SendCodeResponse) then) =
      _$SendCodeResponseCopyWithImpl<$Res, SendCodeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'statusCode') String? statusCode,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'isNewUser') bool? isNewUser});
}

/// @nodoc
class _$SendCodeResponseCopyWithImpl<$Res, $Val extends SendCodeResponse>
    implements $SendCodeResponseCopyWith<$Res> {
  _$SendCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? statusCode = freezed,
    Object? error = freezed,
    Object? isNewUser = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isNewUser: freezed == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendCodeResponseCopyWith<$Res>
    implements $SendCodeResponseCopyWith<$Res> {
  factory _$$_SendCodeResponseCopyWith(
          _$_SendCodeResponse value, $Res Function(_$_SendCodeResponse) then) =
      __$$_SendCodeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'statusCode') String? statusCode,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'isNewUser') bool? isNewUser});
}

/// @nodoc
class __$$_SendCodeResponseCopyWithImpl<$Res>
    extends _$SendCodeResponseCopyWithImpl<$Res, _$_SendCodeResponse>
    implements _$$_SendCodeResponseCopyWith<$Res> {
  __$$_SendCodeResponseCopyWithImpl(
      _$_SendCodeResponse _value, $Res Function(_$_SendCodeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? statusCode = freezed,
    Object? error = freezed,
    Object? isNewUser = freezed,
  }) {
    return _then(_$_SendCodeResponse(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isNewUser: freezed == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_SendCodeResponse implements _SendCodeResponse {
  const _$_SendCodeResponse(
      {@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'statusCode') this.statusCode,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'isNewUser') this.isNewUser});

  factory _$_SendCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SendCodeResponseFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String? result;
  @override
  @JsonKey(name: 'statusCode')
  final String? statusCode;
  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'isNewUser')
  final bool? isNewUser;

  @override
  String toString() {
    return 'SendCodeResponse(result: $result, statusCode: $statusCode, error: $error, isNewUser: $isNewUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendCodeResponse &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, result, statusCode, error, isNewUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendCodeResponseCopyWith<_$_SendCodeResponse> get copyWith =>
      __$$_SendCodeResponseCopyWithImpl<_$_SendCodeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendCodeResponseToJson(
      this,
    );
  }
}

abstract class _SendCodeResponse implements SendCodeResponse {
  const factory _SendCodeResponse(
      {@JsonKey(name: 'result') final String? result,
      @JsonKey(name: 'statusCode') final String? statusCode,
      @JsonKey(name: 'error') final String? error,
      @JsonKey(name: 'isNewUser') final bool? isNewUser}) = _$_SendCodeResponse;

  factory _SendCodeResponse.fromJson(Map<String, dynamic> json) =
      _$_SendCodeResponse.fromJson;

  @override
  @JsonKey(name: 'result')
  String? get result;
  @override
  @JsonKey(name: 'statusCode')
  String? get statusCode;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(name: 'isNewUser')
  bool? get isNewUser;
  @override
  @JsonKey(ignore: true)
  _$$_SendCodeResponseCopyWith<_$_SendCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
