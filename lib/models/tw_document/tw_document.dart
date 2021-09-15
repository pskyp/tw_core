import 'package:freezed_annotation/freezed_annotation.dart';

part 'tw_document.freezed.dart';

@freezed
class TWDocument with _$TWDocument {
  const factory TWDocument({
    required String documentID,
    required String docName,
    required String docPath,
    required String downloadURL,
    required String instructions,
    @Default(false) bool seen,
    @Default(false) bool deleted,
  }) = _TWDocument;
}
