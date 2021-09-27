// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tw_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TWNotification _$$_TWNotificationFromJson(Map<String, dynamic> json) =>
    _$_TWNotification(
      title: json['title'] as String,
      intendedUserUID: json['intendedUserUID'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_TWNotificationToJson(_$_TWNotification instance) =>
    <String, dynamic>{
      'title': instance.title,
      'intendedUserUID': instance.intendedUserUID,
      'text': instance.text,
    };
