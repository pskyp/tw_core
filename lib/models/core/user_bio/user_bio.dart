import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bio.freezed.dart';
part 'user_bio.g.dart';

@freezed
class UserBio with _$UserBio {
  const factory UserBio({
    required String coverLetter,
  }) = _UserBio;

  factory UserBio.fromJson(Map<String, dynamic> json) =>
      _$UserBioFromJson(json);
}
