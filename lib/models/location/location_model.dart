// To parse required this JSON data, do
//
//     final locationModel = locationModelFromJson(jsonString);

import 'dart:convert';

class LocationModel {
  LocationModel({
    required this.postcode,
    required this.latitude,
    required this.longitude,
    required this.formattedAddress,
    required this.thoroughfare,
    required this.buildingName,
    required this.subBuildingName,
    required this.subBuildingNumber,
    required this.buildingNumber,
    required this.line1,
    required this.line2,
    required this.line3,
    required this.line4,
    required this.locality,
    required this.townOrCity,
    required this.county,
    required this.district,
    required this.country,
    required this.residential,
    required this.region,
  });
  String region;
  String postcode;
  double latitude;
  double longitude;
  List<String> formattedAddress;
  String thoroughfare;
  String buildingName;
  String subBuildingName;
  String subBuildingNumber;
  String buildingNumber;
  String line1;
  String line2;
  String line3;
  String line4;
  String locality;
  String townOrCity;
  String county;
  String district;
  String country;
  bool residential;

  String get completeAddress {
    String result = '';
    for (int i = 0; i < formattedAddress.length; i++) {
      if (formattedAddress[i] != "") {
        result += formattedAddress[i];

        if (i < formattedAddress.length - 1) {
          result += ', ';
        } else {
          result += '.';
        }
      }
    }
    return result;
  }

  factory LocationModel.fromRawJson(String str) =>
      LocationModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        postcode: json["postcode"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        formattedAddress:
            List<String>.from(json["formatted_address"].map((x) => x)),
        thoroughfare: json["thoroughfare"],
        buildingName: json["building_name"],
        subBuildingName: json["sub_building_name"],
        subBuildingNumber: json["sub_building_number"],
        buildingNumber: json["building_number"],
        line1: json["line_1"],
        line2: json["line_2"],
        line3: json["line_3"],
        line4: json["line_4"],
        locality: json["locality"],
        townOrCity: json["town_or_city"],
        county: json["county"],
        district: json["district"],
        country: json["country"],
        residential: json["residential"],
        region: json["region"],
      );

  Map<String, dynamic> toJson() => {
        "region": region,
        "postcode": postcode,
        "latitude": latitude,
        "longitude": longitude,
        "formatted_address": List<dynamic>.from(formattedAddress.map((x) => x)),
        "thoroughfare": thoroughfare,
        "building_name": buildingName,
        "sub_building_name": subBuildingName,
        "sub_building_number": subBuildingNumber,
        "building_number": buildingNumber,
        "line_1": line1,
        "line_2": line2,
        "line_3": line3,
        "line_4": line4,
        "locality": locality,
        "town_or_city": townOrCity,
        "county": county,
        "district": district,
        "country": country,
        "residential": residential,
      };
}
