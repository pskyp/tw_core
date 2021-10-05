part of 'bio_input_bloc.dart';

@freezed
class BioInputEvent with _$BioInputEvent {
  const factory BioInputEvent.coverLetterInpput(String input) =
      CoverLetterInput;
}
