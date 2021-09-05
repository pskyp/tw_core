import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/location/models/coordinates.dart';
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

  Future<List<String>> typeAheadCity3(String city) async {
    // API key
    const _api_key = "6fzklILSAOFE0QNdAWglDwf189hpyQOK";

    final request = 'https://api.getAddress.io/typeahead/$city?api-key=$apiKey';

    final response = await http.get(Uri.parse(request));
    print(response.body.toString());
    if (response.statusCode == 200) {
      List<String> suggestions =
          (jsonDecode(response.body) as List<dynamic>).cast<String>();

      return suggestions;
    } else {
      throw Exception('Error fetching location');
    }
  }

  Future<List<Map>> typeAheadCity4(String city) async {
    List<String> result = [];
    List<Map> result2 = [];
    // API key
    const _api_key = "6fzklILSAOFE0QNdAWglDwf189hpyQOK";

    // 'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&fields=address_component&key=$apiKey&sessiontoken=$sessionToken';
    final request =
        'https://api.os.uk/search/names/v1/find?maxresults=5&query=$city&fq=LOCAL_TYPE:Town%20LOCAL_TYPE:Village%20LOCAL_TYPE:Suburban_Area%20LOCAL_TYPE:Hamlet%20LOCAL_TYPE:City%20LOCAL_TYPE:Other_Settlement&key=$_api_key';
    // 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&types=address&language=$lang&components=country:uk&key=$apiKey&sessiontoken=$sessionToken';
    var response = await http.get(Uri.parse(request));
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      // final citylookup = Citylookup.fromJson(json.decode(response.body));
      // print(citylookup.results.toString());
      Map<String, dynamic> suggestions = jsonDecode(response.body);
      List cities = suggestions['results'];

      cities.forEach((element) {
        Map cityDetails = {'name': '', 'region': '', 'postcode': ''};
        cityDetails['name'] = element['GAZETTEER_ENTRY']['NAME1'];
        if (element['GAZETTEER_ENTRY']['DISTRICT_BOROUGH'] != null) {
          cityDetails['region'] =
              element!['GAZETTEER_ENTRY']['DISTRICT_BOROUGH'];
        } else
          cityDetails['region'] = '';
        if (element['GAZETTEER_ENTRY']['POSTCODE_DISTRICT'] != null) {
          cityDetails['postcode'] =
              element!['GAZETTEER_ENTRY']['POSTCODE_DISTRICT'];
        } else
          cityDetails['postcode'] = '';
        result2.add(cityDetails);
      });
      result2.forEach((element) {
        print(element);
      });
      return result2;
    } else {
      throw Exception('Error fetching location');
    }
  }

  Future<LocationModel> getcoordinate(Map placeId) async {
    final request =
        'https://geocoding-by-api-ninjas.p.rapidapi.com/v1/geocoding?city= ' +
            placeId['name'] +
            '&country=gb';
    final response = await http.get(Uri.parse(request), headers: {
      'x-rapidapi-host': 'geocoding-by-api-ninjas.p.rapidapi.com',
      'x-rapidapi-key': 'e19f5c5a0cmsh7ad7a968c3208f4p1be967jsnf0a0efde897b'
    });
    print(response.body);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      final Coordinates coordinates = Coordinates.fromJson(json[0]);
      print(coordinates.latitude);
      LocationModel location = LocationModel(
          postcode: placeId['postcode'],
          latitude: coordinates.latitude!.toDouble(),
          longitude: coordinates.longitude!.toDouble(),
          formattedAddress: [],
          thoroughfare: '',
          buildingName: '',
          subBuildingName: '',
          subBuildingNumber: '',
          buildingNumber: '',
          line1: '',
          line2: '',
          line3: '',
          line4: '',
          locality: '',
          townOrCity: placeId['name'],
          county: '',
          district: placeId['region'],
          country: 'gb',
          residential: false);
      return location;
    } else {
      throw Exception('Failed to fetch suggestion');
    }
  }
}
