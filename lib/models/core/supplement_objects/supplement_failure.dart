import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplement_failure.freezed.dart';

@freezed
class SupplementFailure with _$SupplementFailure {
  const factory SupplementFailure.serverError() = ServerError;
}
