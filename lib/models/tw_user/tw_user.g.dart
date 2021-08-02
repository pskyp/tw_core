// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tw_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TWUser _$TWUserFromJson(Map<String, dynamic> json) => TWUser(
      companyDomain: json['companyDomain'] as String,
      shouldDisplayShowcase: json['shouldDisplayShowcase'] as bool,
      type: _$enumDecode(_$TWUserTypeEnumMap, json['type']),
      uid: json['uid'] as String,
      company: json['company'] as String,
      profileImage: json['profileImage'] as String,
      memberSince: DateTime.parse(json['memberSince'] as String),
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      pushToken: json['pushToken'] as String,
      phone: json['phone'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    )..invoicingDetails = json['invoicingDetails'] == null
        ? null
        : InvoicingDetails.fromJson(
            json['invoicingDetails'] as Map<String, dynamic>);

Map<String, dynamic> _$TWUserToJson(TWUser instance) => <String, dynamic>{
      'uid': instance.uid,
      'type': _$TWUserTypeEnumMap[instance.type],
      'displayName': instance.displayName,
      'profileImage': instance.profileImage,
      'email': instance.email,
      'company': instance.company,
      'companyDomain': instance.companyDomain,
      'pushToken': instance.pushToken,
      'phone': instance.phone,
      'location': instance.location.toJson(),
      'memberSince': instance.memberSince.toIso8601String(),
      'invoicingDetails': instance.invoicingDetails?.toJson(),
      'shouldDisplayShowcase': instance.shouldDisplayShowcase,
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
