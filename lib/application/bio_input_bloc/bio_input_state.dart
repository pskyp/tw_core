part of 'bio_input_bloc.dart';

@freezed
class BioInputState with _$BioInputState {
  const factory BioInputState({
    required bool showErrorMessages,
    required bool submissionInProgress,
    required Option<Either<TWServerError, Unit>> resultOption,
    required TWString coverLetter,
  }) = _BioInputState;

  factory BioInputState.initial() => _BioInputState(
        coverLetter: TWString('', TWString.Bio_Cover_Letter_ML),
        resultOption: optionOf(null),
        submissionInProgress: false,
        showErrorMessages: false,
      );
}
