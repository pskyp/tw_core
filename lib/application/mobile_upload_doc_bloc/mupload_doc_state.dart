part of 'mupload_doc_bloc.dart';

@freezed
class MUploadDocState with _$MUploadDocState {
  const MUploadDocState._();
  const factory MUploadDocState({
    required TWString instruction,
    bool? requireInstructions,
    required FilePickerResult? selectedFile,
    required bool showErrorMessages,
    required bool uploadInProgress,
    required TWUser loggedInUser,
    required String typeId,
    required TWDocType docType,
    required Option<Either<TWServerError, Unit>> resultOption,
  }) = _MUploadDocState;

  factory MUploadDocState.initial({
    required TWUser loggedInUser,
    required String typeId,
    required TWDocType docType,
    bool? requireInstructions,
  }) =>
      _MUploadDocState(
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
