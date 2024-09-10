// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendCodeResponse _$$_SendCodeResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SendCodeResponse',
      json,
      ($checkedConvert) {
        final val = _$_SendCodeResponse(
          result: $checkedConvert('result', (v) => v as String?),
          statusCode: $checkedConvert('statusCode', (v) => v as String?),
          error: $checkedConvert('error', (v) => v as String?),
          isNewUser: $checkedConvert('isNewUser', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SendCodeResponseToJson(_$_SendCodeResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'statusCode': instance.statusCode,
      'error': instance.error,
      'isNewUser': instance.isNewUser,
    };
