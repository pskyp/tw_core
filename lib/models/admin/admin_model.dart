import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tw_core/models/tw_user/tw_user.dart';

part 'admin_model.freezed.dart';
part 'admin_model.g.dart';

@freezed
class Admin with _$Admin {
  const Admin._();
  const factory Admin({
    required TWUser basicProfile,
  }) = _Admin;

  factory Admin.fromJson(Map<String, dynamic> json) =>  _$AdminFromJson(json);
}
