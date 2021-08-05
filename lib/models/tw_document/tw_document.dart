import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tw_document.g.dart';

@JsonSerializable()
class TWDocument with EquatableMixin {
  final String docName;
  final String docPath;

  TWDocument({
    required this.docName,
    required this.docPath,
  });

  @override
  List<Object?> get props => [
        docName,
        docPath,
      ];
  Map<String, dynamic> toJson() => _$TWDocumentToJson(this);
  factory TWDocument.fromJson(Map<String, dynamic> json) =>
      _$TWDocumentFromJson(json);
}
