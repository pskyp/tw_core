part of 'mupload_doc_bloc.dart';

@freezed
class MUploadDocEvent with _$MUploadDocEvent {
  const factory MUploadDocEvent.docInstructionsInput(String input) =
      DocInstructionsInput;

  const factory MUploadDocEvent.filedPicked(FilePickerResult? file) =
      FiledPicked;

  const factory MUploadDocEvent.uploadPressed() = UploadPressed;
}
