import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/location/raw_address_model.dart';

class PlaceService {
  static final String apiKey = 'v4W6lwkFskGmNjPrnWY9BQ30266';

  Future<List<RawAddressModel>> fetchSuggestions(String input) async {
    final request =
        'https://api.getAddress.io/autocomplete/$input?api-key=$apiKey';
    final response = await http.get(Uri.parse(request));

    if (response.statusCode == 200) {
      var suggestions = jsonDecode(response.body);
      List<RawAddressModel> addressList = (suggestions["suggestions"] as List)
          .map((e) => RawAddressModel.fromJson(e))
          .toList();
      return addressList;
    } else {
      throw Exception('Error fetching location');
    }
  }

  Future<List<RawAddressModel>> fetchOnlyTownSuggestions(String input) async {
    final request =
        'https://api.getAddress.io/autocomplete/$input?api-key=$apiKey';
    final response = await http.get(Uri.parse(request));

    if (response.statusCode == 200) {
      var suggestions = jsonDecode(response.body);
      List<RawAddressModel> addressList = (suggestions["suggestions"] as List)
          .map((e) => RawAddressModel.fromJson(e))
          .toList();
      return addressList;
    } else {
      throw Exception('Error fetching location');
    }
  }

  Future<LocationModel> getPlaceDetailFromId(String placeId) async {
    final request = 'https://api.getAddress.io/get/$placeId?api-key=$apiKey';
    final response = await http.get(Uri.parse(request));
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      LocationModel location = LocationModel.fromJson(json);
      return location;
    } else {
      throw Exception('Failed to fetch suggestion');
    }
  }
}
