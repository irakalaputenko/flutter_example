// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_by_phone_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterByPhoneDto _$$_RegisterByPhoneDtoFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_RegisterByPhoneDto',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['phone'],
        );
        final val = _$_RegisterByPhoneDto(
          phone: $checkedConvert('phone', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_RegisterByPhoneDtoToJson(
        _$_RegisterByPhoneDto instance) =>
    <String, dynamic>{
      'phone': instance.phone,
    };
