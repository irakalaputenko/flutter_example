// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenResponse _$$_TokenResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_TokenResponse',
      json,
      ($checkedConvert) {
        final val = _$_TokenResponse(
          statusCode: $checkedConvert('statusCode', (v) => v as String?),
          error: $checkedConvert('error', (v) => v as String?),
          accessToken: $checkedConvert('access_token', (v) => v as String?),
          refreshToken: $checkedConvert('refresh_token', (v) => v as String?),
          user: $checkedConvert(
              'user',
              (v) => v == null
                  ? null
                  : UserResponse.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'accessToken': 'access_token',
        'refreshToken': 'refresh_token'
      },
    );

Map<String, dynamic> _$$_TokenResponseToJson(_$_TokenResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'error': instance.error,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'user': instance.user?.toJson(),
    };
