import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_completion_failure.freezed.dart';

@freezed
abstract class ProfileCompletionFailure with _$ProfileCompletionFailure {
  const factory ProfileCompletionFailure.serverError() = ServerError;
}
