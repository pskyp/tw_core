class PostcodeLookupModel {
  PostcodeLookupModel({
    required this.status,
    required this.result,
  });
  late final int status;
  late final Result result;
  
  PostcodeLookupModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    result = Result.fromJson(json['result']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['result'] = result.toJson();
    return _data;
  }
}

class Result {
  Result({
    required this.outcode,
    required this.longitude,
    required this.latitude,
    required this.northings,
    required this.eastings,
    required this.adminDistrict,
    required this.parish,
    required this.adminCounty,
    required this.adminWard,
    required this.country,
  });
  late final String outcode;
  late final double longitude;
  late final double latitude;
  late final int northings;
  late final int eastings;
  late final List<String> adminDistrict;
  late final List<String> parish;
  late final List<String> adminCounty;
  late final List<String> adminWard;
  late final List<String> country;
  
  Result.fromJson(Map<String, dynamic> json){
    outcode = json['outcode'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    northings = json['northings'];
    eastings = json['eastings'];
    adminDistrict = List.castFrom<dynamic, String>(json['admin_district']);
    parish = List.castFrom<dynamic, String>(json['parish']);
    adminCounty = List.castFrom<dynamic, String>(json['admin_county']);
    adminWard = List.castFrom<dynamic, String>(json['admin_ward']);
    country = List.castFrom<dynamic, String>(json['country']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['outcode'] = outcode;
    _data['longitude'] = longitude;
    _data['latitude'] = latitude;
    _data['northings'] = northings;
    _data['eastings'] = eastings;
    _data['admin_district'] = adminDistrict;
    _data['parish'] = parish;
    _data['admin_county'] = adminCounty;
    _data['admin_ward'] = adminWard;
    _data['country'] = country;
    return _data;
  }
}