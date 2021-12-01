import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/location/raw_address_model.dart';
import 'package:tw_core/services/place_service.dart';

class TWLocationInput extends StatelessWidget {
  TWLocationInput({
    Key? key,
    required this.onLocationSelected,
    required this.errorText,
    required this.selectedLocation,
    required this.showCompleteAddress,
    required this.labelText,
  }) : super(key: key);

  final Function(LocationModel location) onLocationSelected;
  final String? errorText;
  final LocationModel? selectedLocation;
  final bool showCompleteAddress;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xff027887)))),
      child: Row(
        children: [
          Icon(Icons.place, color: Color(0xff027887)),
          Expanded(
            child: TypeAheadField(
              textFieldConfiguration: TextFieldConfiguration(
                  controller: TextEditingController(
                    text: selectedLocation == null
                        ? ''
                        : showCompleteAddress
                            ? selectedLocation!.completeAddress
                            : selectedLocation!.townOrCity +
                                selectedLocation!.postcode,
                    // text: state.location?.completeAddress ?? '',
                  ),
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: labelText ?? 'location',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                      left: 15,
                      bottom: 11,
                      top: 11,
                      right: 15,
                    ),
                    errorText: errorText,
                    // errorText: state.showErrorMessages && state.location == null
                    //     ? 'Please select Location'
                    //     : null,
                  )),
              suggestionsCallback: (cityName) async {
                List<RawAddressModel> addresses =
                    await PlaceService().fetchSuggestions(cityName);
                return addresses;
              },
              itemBuilder: (context, RawAddressModel address) {
                return ListTile(title: Text(address.address));
              },
              onSuggestionSelected: (RawAddressModel address) async {
                LocationModel location =
                    await PlaceService().getPlaceDetailFromId(address.id);
                onLocationSelected(location);
                // context
                //     .read<ProfilecompletionBloc>()
                //     .add(ProfilecompletionEvent.locationChanged(location));
              },
            ),
          ),
        ],
      ),
    );
  }
}
