// To parse this JSON data, do
//
//     final tenderInvitationMail = tenderInvitationMailFromJson(jsonString);

import 'dart:convert';

class TenderInvitationMail {
  TenderInvitationMail({
    required this.to,
    required this.message,
  });

  List<String> to;
  Message message;

  factory TenderInvitationMail.fromRawJson(String str) =>
      TenderInvitationMail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TenderInvitationMail.fromJson(Map<String, dynamic> json) =>
      TenderInvitationMail(
        to: List<String>.from(json["to"].map((x) => x)),
        message: Message.fromJson(json["message"]),
      );

  Map<String, dynamic> toJson() => {
        "to": List<dynamic>.from(to.map((x) => x)),
        "message": message.toJson(),
      };
}

class Message {
  Message({
    required this.subject,
    required this.text,
  });

  String subject;
  String text;

  factory Message.fromRawJson(String str) => Message.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        subject: json["subject"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "subject": subject,
        "text": text,
      };
}
