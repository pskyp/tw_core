import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/services/cache_service.dart';

part 'edit_company_details_bloc.freezed.dart';
part 'edit_company_details_event.dart';
part 'edit_company_details_state.dart';

class EditCompanyDetailsBloc
    extends Bloc<EditCompanyDetailsEvent, EditCompanyDetailsState> {
  EditCompanyDetailsBloc()
      : super(EditCompanyDetailsState.initial(
          contractor: CacheService().contractor,
        )) {
    on<RegisteredAddressInput>((event, emit) {
      emit(state.copyWith(registeredAddress: optionOf(event.location)));
    });
  }
}
