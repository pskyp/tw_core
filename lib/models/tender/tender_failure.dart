import 'package:freezed_annotation/freezed_annotation.dart';

part 'tender_failure.freezed.dart';

@freezed
class AddTenderFailure with _$AddTenderFailure {
  const factory AddTenderFailure.serverError() = ServerError;
}
