class Coordinates {
  String? name;
  double? latitude;
  double? longitude;
  String? country;

  Coordinates({this.name, this.latitude, this.longitude, this.country});

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        name: json['name'] as String?,
        latitude: json['latitude'] as double?,
        longitude: json['longitude'] as double?,
        country: json['country'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'latitude': latitude,
        'longitude': longitude,
        'country': country,
      };
}
