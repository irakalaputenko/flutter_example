// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UserResponse',
      json,
      ($checkedConvert) {
        final val = _$_UserResponse(
          contactId: $checkedConvert('contact_id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          secondName: $checkedConvert('second_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          birthdate: $checkedConvert('birthdate', (v) => v as String?),
          cashback: $checkedConvert('cashback', (v) => v as int?),
          phone: $checkedConvert('phone', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'contactId': 'contact_id',
        'secondName': 'second_name',
        'lastName': 'last_name'
      },
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'contact_id': instance.contactId,
      'name': instance.name,
      'second_name': instance.secondName,
      'last_name': instance.lastName,
      'birthdate': instance.birthdate,
      'cashback': instance.cashback,
      'phone': instance.phone,
      'email': instance.email,
    };
