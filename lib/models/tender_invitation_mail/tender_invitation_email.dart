// To parse this JSON data, do
//
//     final tenderInvitationMail = tenderInvitationMailFromJson(jsonString);

import 'dart:convert';

class TenderInvitationMail {
  TenderInvitationMail({
    required this.to,
    required this.template,
    
  });

  List<String> to;
  Message template;
 

  factory TenderInvitationMail.fromRawJson(String str) =>
      TenderInvitationMail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TenderInvitationMail.fromJson(Map<String, dynamic> json) =>
      TenderInvitationMail(
        to: List<String>.from(json["to"].map((x) => x)),
        template: Message.fromJson(json["template"]),
      );

  Map<String, dynamic> toJson() => {
        "to": List<dynamic>.from(to.map((x) => x)),
        "template": template.toJson(),
      };
}

class Message {
  Message({
    required this.data,
    required this.name,
   
  });

  Map data;
  String name;
  

  factory Message.fromRawJson(String str) => Message.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        data: json["data"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "data": data,
        "name": name,
      };
}
