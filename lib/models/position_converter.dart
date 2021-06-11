import 'package:geolocator/geolocator.dart';
import 'package:json_annotation/json_annotation.dart';

class PositionConverter
    implements JsonConverter<Position, Map<String, dynamic>> {
  const PositionConverter();

  @override
  Position fromJson(dynamic message) {
    return Position.fromMap(message);
  }

  @override
  Map<String, dynamic> toJson(Position position) {
    return position.toJson();
  }
}
