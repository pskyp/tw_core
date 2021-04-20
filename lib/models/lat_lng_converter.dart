import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

class LatLngConverter implements JsonConverter<LatLng, List<dynamic>> {
  const LatLngConverter();
  @override
  LatLng fromJson(List<dynamic> json) {
    return LatLng.fromJson(json);
  }

  @override
  List<dynamic> toJson(LatLng latlng) {
    return latlng.toJson();
  }
}
