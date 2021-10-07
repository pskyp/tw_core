part of 'upload_doc_bloc.dart';

@freezed
class UploadDocState with _$UploadDocState {
  const UploadDocState._();
  const factory UploadDocState({
    required TWString instruction,
    bool? requireInstructions,
    required FilePickerResult? selectedFile,
    required bool showErrorMessages,
    required bool uploadInProgress,
    required TWUser loggedInUser,
    required String typeId,
    required TWDocType docType,
    required Option<Either<TWServerError, Unit>> resultOption,
  }) = _UploadDocState;

  factory UploadDocState.initial({
    required TWUser loggedInUser,
    required String typeId,
    required TWDocType docType,
    bool? requireInstructions,
  }) =>
      _UploadDocState(
        instruction: TWString('', TWString.DOC_INSTRUCTIONS_ML),
        selectedFile: null,
        showErrorMessages: false,
        uploadInProgress: false,
        resultOption: optionOf(null),
        loggedInUser: loggedInUser,
        docType: docType,
        typeId: typeId,
        requireInstructions: requireInstructions,
      );

  bool get allInputsValid {
    if (requireInstructions == null || requireInstructions!) {
      return instruction.isValid && selectedFile != null;
    } else
      return selectedFile != null;
  }
}
