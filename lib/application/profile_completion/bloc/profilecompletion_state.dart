part of 'profilecompletion_bloc.dart';

@freezed
class ProfilecompletionState with _$ProfilecompletionState {
  const factory ProfilecompletionState({
    required TWPhone phone,
    required TWCompanyName companyName,
    required TWCompanyDomain companyDomain,
    required TWDisplayName displayName,
    required LocationModel? location,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<ProfileCompletionFailure, Unit>>
        failureOrSucessOption,
  }) = _ProfilecompletionState;

  factory ProfilecompletionState.initial() => ProfilecompletionState(
        companyName: TWCompanyName(''),
        companyDomain: TWCompanyDomain(''),
        displayName: TWDisplayName(''),
        location: null,
        phone: TWPhone(''),
        isSubmitting: false,
        showErrorMessages: false,
        failureOrSucessOption: none(),
      );
}
