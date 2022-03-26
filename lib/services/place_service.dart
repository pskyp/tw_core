import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/location/postciode_lookup_model.dart';
import 'package:tw_core/models/location/raw_address_model.dart';

class PlaceService {
  static final String apiKey = 'v4W6lwkFskGmNjPrnWY9BQ30266';

  Future<List<RawAddressModel>> fetchSuggestions(String input) async {
    final request =
        'https://api.getAddress.io/autocomplete/$input?api-key=$apiKey&all=true&top=20';

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
      json['region'] = await RegionLookup(json['district']);
      print(json);
      LocationModel location = LocationModel.fromJson(json);
      print(location);
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
    if (city.length > 2) {
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

        LocationModel location;

        result2.forEach((element) async {
          location = await PlaceService().getcoordinate(element);
          print('---------------------------------');
          print(location.latitude);
          print('---------------------------------');
        });
        return result2;
      } else {
        throw Exception('Error fetching location');
      }
    } else
      return [];
  }

  Future<LocationModel> getcoordinate(Map placeId) async {
    final request = 'https://api.postcodes.io/outcodes/' + placeId['postcode'];
    final response = await http.get(Uri.parse(request));
    print(response.body);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
     
      final PostcodeLookupModel data = PostcodeLookupModel.fromJson(json);
      // print(data.result);
      String region=     await RegionLookup(data.result.adminDistrict[0]);

      if (data.result.adminCounty.length < 1) data.result.adminCounty.add('');
      LocationModel location = LocationModel(
          postcode: placeId['postcode'],
          latitude: data.result.latitude,
          longitude: data.result.longitude,
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
          county: data.result.adminCounty[0],
          district: data.result.adminDistrict[0],
          country: 'gb',
          residential: false,
          region:region);
      return location;
    } else {
      throw Exception('Failed to fetch suggestion');
    }
  }
}

Future<String> RegionLookup(String district) async {
  String answer = district;
  List<Map> DistrictRegion = [
    {"DISTRICT": "Hartlepool", "REGION": "North East"},
    {
      "DISTRICT": "East Riding of Yorkshire",
      "REGION": "Yorkshire and The Humber"
    },
    {"DISTRICT": "Middlesbrough", "REGION": "North East"},
    {"DISTRICT": "Redcar and Cleveland", "REGION": "North East"},
    {
      "DISTRICT": "North East Lincolnshire",
      "REGION": "Yorkshire and The Humber"
    },
    {"DISTRICT": "North Lincolnshire", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Stockton-on-Tees", "REGION": "North East"},
    {"DISTRICT": "Darlington", "REGION": "North East"},
    {"DISTRICT": "York", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Craven", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "County Durham", "REGION": "North East"},
    {"DISTRICT": "Northumberland", "REGION": "North East"},
    {"DISTRICT": "Hambleton", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Harrogate", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Newcastle upon Tyne", "REGION": "North East"},
    {"DISTRICT": "North Tyneside", "REGION": "North East"},
    {"DISTRICT": "Richmondshire", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Ryedale", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "South Tyneside", "REGION": "North East"},
    {"DISTRICT": "Sunderland", "REGION": "North East"},
    {"DISTRICT": "Scarborough", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Selby", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Gateshead", "REGION": "North East"},
    {"DISTRICT": "Halton", "REGION": "North West"},
    {"DISTRICT": "Barnsley", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Doncaster", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Warrington", "REGION": "North West"},
    {"DISTRICT": "Blackburn with Darwen", "REGION": "North West"},
    {"DISTRICT": "Rotherham", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Sheffield", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Blackpool", "REGION": "North West"},
    {"DISTRICT": "Cheshire East", "REGION": "North West"},
    {"DISTRICT": "Bradford", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Calderdale", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Cheshire West and Chester", "REGION": "North West"},
    {"DISTRICT": "Allerdale", "REGION": "North West"},
    {"DISTRICT": "Kirklees", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Leeds", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Barrow-in-Furness", "REGION": "North West"},
    {"DISTRICT": "Carlisle", "REGION": "North West"},
    {"DISTRICT": "Wakefield", "REGION": "Yorkshire and The Humber"},
    {"DISTRICT": "Derby", "REGION": "East Midlands"},
    {"DISTRICT": "Copeland", "REGION": "North West"},
    {"DISTRICT": "Eden", "REGION": "North West"},
    {"DISTRICT": "Leicester", "REGION": "East Midlands"},
    {"DISTRICT": "Rutland", "REGION": "East Midlands"},
    {"DISTRICT": "South Lakeland", "REGION": "North West"},
    {"DISTRICT": "Burnley", "REGION": "North West"},
    {"DISTRICT": "Nottingham", "REGION": "East Midlands"},
    {"DISTRICT": "North Northamptonshire", "REGION": "East Midlands"},
    {"DISTRICT": "Chorley", "REGION": "North West"},
    {"DISTRICT": "Fylde", "REGION": "North West"},
    {"DISTRICT": "West Northamptonshire", "REGION": "East Midlands"},
    {"DISTRICT": "Amber Valley", "REGION": "East Midlands"},
    {"DISTRICT": "Hyndburn", "REGION": "North West"},
    {"DISTRICT": "Lancaster", "REGION": "North West"},
    {"DISTRICT": "Bolsover", "REGION": "East Midlands"},
    {"DISTRICT": "Chesterfield", "REGION": "East Midlands"},
    {"DISTRICT": "Pendle", "REGION": "North West"},
    {"DISTRICT": "Preston", "REGION": "North West"},
    {"DISTRICT": "Derbyshire Dales", "REGION": "East Midlands"},
    {"DISTRICT": "Erewash", "REGION": "East Midlands"},
    {"DISTRICT": "Ribble Valley", "REGION": "North West"},
    {"DISTRICT": "Rossendale", "REGION": "North West"},
    {"DISTRICT": "High Peak", "REGION": "East Midlands"},
    {"DISTRICT": "North East Derbyshire", "REGION": "East Midlands"},
    {"DISTRICT": "South Ribble", "REGION": "North West"},
    {"DISTRICT": "West Lancashire", "REGION": "North West"},
    {"DISTRICT": "Wyre", "REGION": "North West"},
    {"DISTRICT": "Bolton", "REGION": "North West"},
    {"DISTRICT": "Bury", "REGION": "North West"},
    {"DISTRICT": "Manchester", "REGION": "North West"},
    {"DISTRICT": "Oldham", "REGION": "North West"},
    {"DISTRICT": "Rochdale", "REGION": "North West"},
    {"DISTRICT": "South Derbyshire", "REGION": "East Midlands"},
    {"DISTRICT": "Salford", "REGION": "North West"},
    {"DISTRICT": "Blaby", "REGION": "East Midlands"},
    {"DISTRICT": "Stockport", "REGION": "North West"},
    {"DISTRICT": "Charnwood", "REGION": "East Midlands"},
    {"DISTRICT": "Tameside", "REGION": "North West"},
    {"DISTRICT": "Harborough", "REGION": "East Midlands"},
    {"DISTRICT": "Trafford", "REGION": "North West"},
    {"DISTRICT": "Hinckley and Bosworth", "REGION": "East Midlands"},
    {"DISTRICT": "Wigan", "REGION": "North West"},
    {"DISTRICT": "Melton", "REGION": "East Midlands"},
    {"DISTRICT": "Knowsley", "REGION": "North West"},
    {"DISTRICT": "North West Leicestershire", "REGION": "East Midlands"},
    {"DISTRICT": "Liverpool", "REGION": "North West"},
    {"DISTRICT": "Oadby and Wigston", "REGION": "East Midlands"},
    {"DISTRICT": "St. Helens", "REGION": "North West"},
    {"DISTRICT": "Boston", "REGION": "East Midlands"},
    {"DISTRICT": "Sefton", "REGION": "North West"},
    {"DISTRICT": "East Lindsey", "REGION": "East Midlands"},
    {"DISTRICT": "Wirral", "REGION": "North West"},
    {"DISTRICT": "Lincoln", "REGION": "East Midlands"},
    {
      "DISTRICT": "Kingston upon Hull, City of",
      "REGION": "Yorkshire and The Humber"
    },
    {"DISTRICT": "North Kesteven", "REGION": "East Midlands"},
    {"DISTRICT": "South Holland", "REGION": "East Midlands"},
    {"DISTRICT": "South Kesteven", "REGION": "East Midlands"},
    {"DISTRICT": "West Lindsey", "REGION": "East Midlands"},
    {"DISTRICT": "Ashfield", "REGION": "East Midlands"},
    {"DISTRICT": "Bassetlaw", "REGION": "East Midlands"},
    {"DISTRICT": "Broxtowe", "REGION": "East Midlands"},
    {"DISTRICT": "Gedling", "REGION": "East Midlands"},
    {"DISTRICT": "Mansfield", "REGION": "East Midlands"},
    {"DISTRICT": "Newark and Sherwood", "REGION": "East Midlands"},
    {"DISTRICT": "Rushcliffe", "REGION": "East Midlands"},
    {"DISTRICT": "Herefordshire, County of", "REGION": "West Midlands"},
    {"DISTRICT": "Telford and Wrekin", "REGION": "West Midlands"},
    {"DISTRICT": "Stoke-on-Trent", "REGION": "West Midlands"},
    {"DISTRICT": "Shropshire", "REGION": "West Midlands"},
    {"DISTRICT": "Cannock Chase", "REGION": "West Midlands"},
    {"DISTRICT": "East Staffordshire", "REGION": "West Midlands"},
    {"DISTRICT": "Lichfield", "REGION": "West Midlands"},
    {"DISTRICT": "Newcastle-under-Lyme", "REGION": "West Midlands"},
    {"DISTRICT": "South Staffordshire", "REGION": "West Midlands"},
    {"DISTRICT": "Stafford", "REGION": "West Midlands"},
    {"DISTRICT": "Staffordshire Moorlands", "REGION": "West Midlands"},
    {"DISTRICT": "Tamworth", "REGION": "West Midlands"},
    {"DISTRICT": "North Warwickshire", "REGION": "West Midlands"},
    {"DISTRICT": "Nuneaton and Bedworth", "REGION": "West Midlands"},
    {"DISTRICT": "Rugby", "REGION": "West Midlands"},
    {"DISTRICT": "Stratford-on-Avon", "REGION": "West Midlands"},
    {"DISTRICT": "Warwick", "REGION": "West Midlands"},
    {"DISTRICT": "Bromsgrove", "REGION": "West Midlands"},
    {"DISTRICT": "Malvern Hills", "REGION": "West Midlands"},
    {"DISTRICT": "Redditch", "REGION": "West Midlands"},
    {"DISTRICT": "Worcester", "REGION": "West Midlands"},
    {"DISTRICT": "Wychavon", "REGION": "West Midlands"},
    {"DISTRICT": "Wyre Forest", "REGION": "West Midlands"},
    {"DISTRICT": "Birmingham", "REGION": "West Midlands"},
    {"DISTRICT": "Coventry", "REGION": "West Midlands"},
    {"DISTRICT": "Dudley", "REGION": "West Midlands"},
    {"DISTRICT": "Sandwell", "REGION": "West Midlands"},
    {"DISTRICT": "Solihull", "REGION": "West Midlands"},
    {"DISTRICT": "Walsall", "REGION": "West Midlands"},
    {"DISTRICT": "Wolverhampton", "REGION": "West Midlands"},
    {"DISTRICT": "Peterborough", "REGION": "East of England"},
    {"DISTRICT": "Luton", "REGION": "East of England"},
    {"DISTRICT": "Southend-on-Sea", "REGION": "East of England"},
    {"DISTRICT": "Thurrock", "REGION": "East of England"},
    {"DISTRICT": "Bedford", "REGION": "East of England"},
    {"DISTRICT": "Central Bedfordshire", "REGION": "East of England"},
    {"DISTRICT": "Cambridge", "REGION": "East of England"},
    {"DISTRICT": "East Cambridgeshire", "REGION": "East of England"},
    {"DISTRICT": "Fenland", "REGION": "East of England"},
    {"DISTRICT": "Huntingdonshire", "REGION": "East of England"},
    {"DISTRICT": "South Cambridgeshire", "REGION": "East of England"},
    {"DISTRICT": "Basildon", "REGION": "East of England"},
    {"DISTRICT": "Braintree", "REGION": "East of England"},
    {"DISTRICT": "Brentwood", "REGION": "East of England"},
    {"DISTRICT": "Castle Point", "REGION": "East of England"},
    {"DISTRICT": "Chelmsford", "REGION": "East of England"},
    {"DISTRICT": "Colchester", "REGION": "East of England"},
    {"DISTRICT": "Epping Forest", "REGION": "East of England"},
    {"DISTRICT": "Harlow", "REGION": "East of England"},
    {"DISTRICT": "West Oxfordshire", "REGION": "South East"},
    {"DISTRICT": "Richmond upon Thames", "REGION": "London"},
    {"DISTRICT": "Southwark", "REGION": "London"},
    {"DISTRICT": "Elmbridge", "REGION": "South East"},
    {"DISTRICT": "Sutton", "REGION": "London"},
    {"DISTRICT": "Epsom and Ewell", "REGION": "South East"},
    {"DISTRICT": "Tower Hamlets", "REGION": "London"},
    {"DISTRICT": "Guildford", "REGION": "South East"},
    {"DISTRICT": "Waltham Forest", "REGION": "London"},
    {"DISTRICT": "Mole Valley", "REGION": "South East"},
    {"DISTRICT": "Wandsworth", "REGION": "London"},
    {"DISTRICT": "Reigate and Banstead", "REGION": "South East"},
    {"DISTRICT": "Westminster", "REGION": "London"},
    {"DISTRICT": "Runnymede", "REGION": "South East"},
    {"DISTRICT": "Medway", "REGION": "South East"},
    {"DISTRICT": "Spelthorne", "REGION": "South East"},
    {"DISTRICT": "Bracknell Forest", "REGION": "South East"},
    {"DISTRICT": "Surrey Heath", "REGION": "South East"},
    {"DISTRICT": "West Berkshire", "REGION": "South East"},
    {"DISTRICT": "Tandridge", "REGION": "South East"},
    {"DISTRICT": "Reading", "REGION": "South East"},
    {"DISTRICT": "Waverley", "REGION": "South East"},
    {"DISTRICT": "Slough", "REGION": "South East"},
    {"DISTRICT": "Woking", "REGION": "South East"},
    {"DISTRICT": "Windsor and Maidenhead", "REGION": "South East"},
    {"DISTRICT": "Adur", "REGION": "South East"},
    {"DISTRICT": "Wokingham", "REGION": "South East"},
    {"DISTRICT": "Arun", "REGION": "South East"},
    {"DISTRICT": "Milton Keynes", "REGION": "South East"},
    {"DISTRICT": "Chichester", "REGION": "South East"},
    {"DISTRICT": "Brighton and Hove", "REGION": "South East"},
    {"DISTRICT": "Crawley", "REGION": "South East"},
    {"DISTRICT": "Portsmouth", "REGION": "South East"},
    {"DISTRICT": "Horsham", "REGION": "South East"},
    {"DISTRICT": "Southampton", "REGION": "South East"},
    {"DISTRICT": "Mid Sussex", "REGION": "South East"},
    {"DISTRICT": "Isle of Wight", "REGION": "South East"},
    {"DISTRICT": "Worthing", "REGION": "South East"},
    {"DISTRICT": "Buckinghamshire", "REGION": "South East"},
    {"DISTRICT": "Bath and North East Somerset", "REGION": "South West"},
    {"DISTRICT": "Eastbourne", "REGION": "South East"},
    {"DISTRICT": "Bristol, City of", "REGION": "South West"},
    {"DISTRICT": "Hastings", "REGION": "South East"},
    {"DISTRICT": "North Somerset", "REGION": "South West"},
    {"DISTRICT": "South Gloucestershire", "REGION": "South West"},
    {"DISTRICT": "Plymouth", "REGION": "South West"},
    {"DISTRICT": "Torbay", "REGION": "South West"},
    {"DISTRICT": "Swindon", "REGION": "South West"},
    {"DISTRICT": "Cornwall", "REGION": "South West"},
    {"DISTRICT": "Isles of Scilly", "REGION": "South West"},
    {"DISTRICT": "Wiltshire", "REGION": "South West"},
    {"DISTRICT": "Bournemouth, Christchurch and Poole", "REGION": "South West"},
    {"DISTRICT": "Dorset", "REGION": "South West"},
    {"DISTRICT": "East Devon", "REGION": "South West"},
    {"DISTRICT": "Exeter", "REGION": "South West"},
    {"DISTRICT": "Mid Devon", "REGION": "South West"},
    {"DISTRICT": "North Devon", "REGION": "South West"},
    {"DISTRICT": "South Hams", "REGION": "South West"},
    {"DISTRICT": "Teignbridge", "REGION": "South West"},
    {"DISTRICT": "Torridge", "REGION": "South West"},
    {"DISTRICT": "West Devon", "REGION": "South West"},
    {"DISTRICT": "Cheltenham", "REGION": "South West"},
    {"DISTRICT": "Cotswold", "REGION": "South West"},
    {"DISTRICT": "Forest of Dean", "REGION": "South West"},
    {"DISTRICT": "Gloucester", "REGION": "South West"},
    {"DISTRICT": "Stroud", "REGION": "South West"},
    {"DISTRICT": "Tewkesbury", "REGION": "South West"},
    {"DISTRICT": "Mendip", "REGION": "South West"},
    {"DISTRICT": "Sedgemoor", "REGION": "South West"},
    {"DISTRICT": "South Somerset", "REGION": "South West"},
    {"DISTRICT": "Somerset West and Taunton", "REGION": "South West"},
    {"DISTRICT": "Maldon", "REGION": "East of England"},
    {"DISTRICT": "Lewes", "REGION": "South East"},
    {"DISTRICT": "Rochford", "REGION": "East of England"},
    {"DISTRICT": "Tendring", "REGION": "East of England"},
    {"DISTRICT": "Uttlesford", "REGION": "East of England"},
    {"DISTRICT": "Broxbourne", "REGION": "East of England"},
    {"DISTRICT": "Dacorum", "REGION": "East of England"},
    {"DISTRICT": "Hertsmere", "REGION": "East of England"},
    {"DISTRICT": "North Hertfordshire", "REGION": "East of England"},
    {"DISTRICT": "Three Rivers", "REGION": "East of England"},
    {"DISTRICT": "Watford", "REGION": "East of England"},
    {"DISTRICT": "Breckland", "REGION": "East of England"},
    {"DISTRICT": "Broadland", "REGION": "East of England"},
    {"DISTRICT": "Great Yarmouth", "REGION": "East of England"},
    {"DISTRICT": "King's Lynn and West Norfolk", "REGION": "East of England"},
    {"DISTRICT": "North Norfolk", "REGION": "East of England"},
    {"DISTRICT": "Norwich", "REGION": "East of England"},
    {"DISTRICT": "Rother", "REGION": "South East"},
    {"DISTRICT": "South Norfolk", "REGION": "East of England"},
    {"DISTRICT": "Babergh", "REGION": "East of England"},
    {"DISTRICT": "Wealden", "REGION": "South East"},
    {"DISTRICT": "Ipswich", "REGION": "East of England"},
    {"DISTRICT": "Basingstoke and Deane", "REGION": "South East"},
    {"DISTRICT": "Mid Suffolk", "REGION": "East of England"},
    {"DISTRICT": "East Hampshire", "REGION": "South East"},
    {"DISTRICT": "St Albans", "REGION": "East of England"},
    {"DISTRICT": "Eastleigh", "REGION": "South East"},
    {"DISTRICT": "Welwyn Hatfield", "REGION": "East of England"},
    {"DISTRICT": "Fareham", "REGION": "South East"},
    {"DISTRICT": "East Hertfordshire", "REGION": "East of England"},
    {"DISTRICT": "Gosport", "REGION": "South East"},
    {"DISTRICT": "Stevenage", "REGION": "East of England"},
    {"DISTRICT": "Hart", "REGION": "South East"},
    {"DISTRICT": "East Suffolk", "REGION": "East of England"},
    {"DISTRICT": "Havant", "REGION": "South East"},
    {"DISTRICT": "West Suffolk", "REGION": "East of England"},
    {"DISTRICT": "New Forest", "REGION": "South East"},
    {"DISTRICT": "City of London", "REGION": "London"},
    {"DISTRICT": "Rushmoor", "REGION": "South East"},
    {"DISTRICT": "Barking and Dagenham", "REGION": "London"},
    {"DISTRICT": "Test Valley", "REGION": "South East"},
    {"DISTRICT": "Winchester", "REGION": "South East"},
    {"DISTRICT": "Ashford", "REGION": "South East"},
    {"DISTRICT": "Canterbury", "REGION": "South East"},
    {"DISTRICT": "Dartford", "REGION": "South East"},
    {"DISTRICT": "Dover", "REGION": "South East"},
    {"DISTRICT": "Gravesham", "REGION": "South East"},
    {"DISTRICT": "Maidstone", "REGION": "South East"},
    {"DISTRICT": "Sevenoaks", "REGION": "South East"},
    {"DISTRICT": "Folkestone and Hythe", "REGION": "South East"},
    {"DISTRICT": "Swale", "REGION": "South East"},
    {"DISTRICT": "Thanet", "REGION": "South East"},
    {"DISTRICT": "Tonbridge and Malling", "REGION": "South East"},
    {"DISTRICT": "Tunbridge Wells", "REGION": "South East"},
    {"DISTRICT": "Cherwell", "REGION": "South East"},
    {"DISTRICT": "Oxford", "REGION": "South East"},
    {"DISTRICT": "South Oxfordshire", "REGION": "South East"},
    {"DISTRICT": "Vale of White Horse", "REGION": "South East"},
    {"DISTRICT": "Barnet", "REGION": "London"},
    {"DISTRICT": "Bexley", "REGION": "London"},
    {"DISTRICT": "Brent", "REGION": "London"},
    {"DISTRICT": "Bromley", "REGION": "London"},
    {"DISTRICT": "Camden", "REGION": "London"},
    {"DISTRICT": "Croydon", "REGION": "London"},
    {"DISTRICT": "Ealing", "REGION": "London"},
    {"DISTRICT": "Enfield", "REGION": "London"},
    {"DISTRICT": "Greenwich", "REGION": "London"},
    {"DISTRICT": "Hackney", "REGION": "London"},
    {"DISTRICT": "Hammersmith and Fulham", "REGION": "London"},
    {"DISTRICT": "Haringey", "REGION": "London"},
    {"DISTRICT": "Harrow", "REGION": "London"},
    {"DISTRICT": "Havering", "REGION": "London"},
    {"DISTRICT": "Hillingdon", "REGION": "London"},
    {"DISTRICT": "Hounslow", "REGION": "London"},
    {"DISTRICT": "Islington", "REGION": "London"},
    {"DISTRICT": "Kensington and Chelsea", "REGION": "London"},
    {"DISTRICT": "Kingston upon Thames", "REGION": "London"},
    {"DISTRICT": "Lambeth", "REGION": "London"},
    {"DISTRICT": "Lewisham", "REGION": "London"},
    {"DISTRICT": "Merton", "REGION": "London"},
    {"DISTRICT": "Newham", "REGION": "London"},
    {"DISTRICT": "Redbridge", "REGION": "London"}
  ];

  DistrictRegion.forEach((element) {
    element['DISTRICT'] == district ? answer = (element['REGION']) : null;
  });
  return answer;
}
