import 'package:freezed_annotation/freezed_annotation.dart';

part 'tw_notification.freezed.dart';
part 'tw_notification.g.dart';

@freezed
class TWNotification with _$TWNotification {
  const factory TWNotification({
    required String title,
    required String intendedUserUID,
    required String text,
  }) = _TWNotification;

  factory TWNotification.fromJson(Map<String, dynamic> json) =>
      _$TWNotificationFromJson(json);
}
