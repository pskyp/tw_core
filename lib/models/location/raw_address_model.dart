// To parse this JSON data, do
//
//     final locationModel = locationModelFromJson(jsonString);

import 'dart:convert';

class RawAddressModel {
  RawAddressModel({
    required this.address,
    required this.url,
    required this.id,
  });

  String address;
  String url;
  String id;

  factory RawAddressModel.fromRawJson(String str) =>
      RawAddressModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RawAddressModel.fromJson(Map<String, dynamic> json) =>
      RawAddressModel(
        address: json["address"],
        url: json["url"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "url": url,
        "id": id,
      };
}
