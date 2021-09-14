import 'package:freezed_annotation/freezed_annotation.dart';

part 'tender_failure.freezed.dart';

@freezed
class ApplyTenderFailure with _$ApplyTenderFailure {
  const factory ApplyTenderFailure.serverError() = ServerErrorApplyTender;
}
