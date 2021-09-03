import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplement_failure.freezed.dart';

@freezed
class AddSupplementFailure with _$AddSupplementFailure {
  const factory AddSupplementFailure.serverError() = ServerError;
}
