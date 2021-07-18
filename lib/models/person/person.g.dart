// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
    uid: json['uid'] as String,
    type: _$enumDecode(_$TWUserTypeEnumMap, json['type']),
    displayName: json['displayName'] as String,
    profileImage: json['profileImage'] as String,
    phone: json['phone'] as String,
    company: json['company'] as String,
    companyDomain: json['companyDomain'] as String,
  );
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'uid': instance.uid,
      'type': _$TWUserTypeEnumMap[instance.type],
      'displayName': instance.displayName,
      'profileImage': instance.profileImage,
      'phone': instance.phone,
      'company': instance.company,
      'companyDomain': instance.companyDomain,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$TWUserTypeEnumMap = {
  TWUserType.Developer: 'Developer',
  TWUserType.Contractor: 'Contractor',
  TWUserType.Subbie: 'Subbie',
};
