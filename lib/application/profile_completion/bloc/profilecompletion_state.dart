part of 'profilecompletion_bloc.dart';

@freezed
class ProfilecompletionState with _$ProfilecompletionState {
  const factory ProfilecompletionState({
    required TWPhone phone,
    required TWCompanyName company,
    required TWDisplayName displayName,
    required LocationModel? location,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<ProfilecompletionFailure, Unit>>
        failureOrSucessOption,
  }) = _ProfilecompletionState;

  factory ProfilecompletionState.initial() => ProfilecompletionState(
        company: TWCompanyName(''),
        displayName: TWDisplayName(''),
        location: null,
        phone: TWPhone(''),
        isSubmitting: false,
        showErrorMessages: false,
        failureOrSucessOption: none(),
      );
}

class ProfilecompletionFailure {}
