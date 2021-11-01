import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/location/location_model.dart';

part 'development.freezed.dart';
part 'development.g.dart';

@freezed
class Development with _$Development {
  const Development._();
  factory Development({
    required DevelopmentIdentifier developmentIdentifier,
    required String description,
    required LocationModel location,
  }) = _Development;

  String get id => developmentIdentifier.id;
  String get title => developmentIdentifier.title;

  factory Development.fromJson(Map<String, dynamic> json) =>
      _$DevelopmentFromJson(json);
}

@freezed
class DevelopmentIdentifier with _$DevelopmentIdentifier {
  const DevelopmentIdentifier._();
  factory DevelopmentIdentifier({
    required String id,
    required String title,
    required String developerId,
  }) = _DevelopmentIdentifier;

  factory DevelopmentIdentifier.pseudo({
    required String title,
  }) =>
      _DevelopmentIdentifier(
        id: 'id + ${DateTime.now()}',
        title: title,
        developerId: 'developerId',
      );

  bool get isPseudo => id.startsWith('id + ');
  // bool get isValid =>

  factory DevelopmentIdentifier.fromJson(Map<String, dynamic> json) =>
      _$DevelopmentIdentifierFromJson(json);
}
