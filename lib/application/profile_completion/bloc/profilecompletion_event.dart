part of 'profilecompletion_bloc.dart';

@freezed
class ProfilecompletionEvent with _$ProfilecompletionEvent {
  const factory ProfilecompletionEvent.displayNameChanged(String value) =
      DisplayNameChanged;

  const factory ProfilecompletionEvent.phoneChanged(String value) =
      PhoneChanged;

  const factory ProfilecompletionEvent.companyNameChanged(String value) =
      CompanyNameChanged;

  const factory ProfilecompletionEvent.companyDomainChanged(String value) =
      CompanyDomainChanged;

  const factory ProfilecompletionEvent.locationChanged(LocationModel value) =
      LocationChanged;

  const factory ProfilecompletionEvent.submitPressed() = SubmitPressed;
}
