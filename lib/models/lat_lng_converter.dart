import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

class LatLngConverter implements JsonConverter<LatLng, List<dynamic>> {
  const LatLngConverter();
  @override
  LatLng fromJson(List<dynamic> json) {
    assert(json is List && json.length == 2);
    final list = json as List;
    return LatLng(list[0], list[1]);
  }

  @override
  List<dynamic> toJson(LatLng latlng) {
    return <double>[latlng.latitude, latlng.longitude];
  }
}
