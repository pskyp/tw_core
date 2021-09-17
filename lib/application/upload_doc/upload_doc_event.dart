part of 'upload_doc_bloc.dart';

@freezed
class UploadDocEvent with _$UploadDocEvent {
  const factory UploadDocEvent.docInstructionsInput(String input) =
      DocInstructionsInput;

  const factory UploadDocEvent.filedPicked(FilePickerResult? file) =
      FiledPicked;

  const factory UploadDocEvent.uploadPressed() = UploadPressed;
}
