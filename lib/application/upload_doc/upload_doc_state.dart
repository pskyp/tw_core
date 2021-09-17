part of 'upload_doc_bloc.dart';

@freezed
class UploadDocState with _$UploadDocState {
  const UploadDocState._();
  const factory UploadDocState({
    required TWString instruction,
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
      );

  bool get allInputsValid => instruction.isValid && selectedFile != null;
}
