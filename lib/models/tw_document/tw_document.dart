import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tw_document.g.dart';

@JsonSerializable()
class TWDocument with EquatableMixin {
  final String docName;
  final String docPath;
  final String downloadURL;

  TWDocument({
    required this.docName,
    required this.docPath,
    required this.downloadURL,
  });

  @override
  List<Object?> get props => [docName, docPath, downloadURL];
  Map<String, dynamic> toJson() => _$TWDocumentToJson(this);
  factory TWDocument.fromJson(Map<String, dynamic> json) =>
      _$TWDocumentFromJson(json);
}
