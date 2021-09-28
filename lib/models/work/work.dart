import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/trades.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

part 'work.freezed.dart';
part 'work.g.dart';

abstract class Work {
  WorkIdentifier get workIdentifier;
  DateTime get createdOn;
  Trade get trade;
  LocationModel get location;
}

enum WorkType { Tender, Supplement, Job }

@freezed
class WorkIdentifier with _$WorkIdentifier {
  const factory WorkIdentifier({
    required String workId,
    required String title,
    required TWUser employer,
    required WorkType type,
  }) = _WorkIdentifier;

  factory WorkIdentifier.tender({
    required String workId,
    required String title,
    required TWUser employer,
  }) =>
      _WorkIdentifier(
        workId: workId,
        title: title,
        employer: employer,
        type: WorkType.Tender,
      );

  factory WorkIdentifier.supplement({
    required String workId,
    required String title,
    required TWUser employer,
  }) =>
      _WorkIdentifier(
        workId: workId,
        title: title,
        employer: employer,
        type: WorkType.Supplement,
      );

  factory WorkIdentifier.job({
    required String workId,
    required String title,
    required TWUser employer,
  }) =>
      _WorkIdentifier(
        workId: workId,
        title: title,
        employer: employer,
        type: WorkType.Job,
      );

  factory WorkIdentifier.fromJson(Map<String, dynamic> json) =>
      _$WorkIdentifierFromJson(json);
}
