import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/contractor/contractor_company_details.dart';
import 'package:tw_core/models/core/company_name/company_name.dart';
import 'package:tw_core/models/core/tw_location/tw_location.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/invoicing/value_objects/company_number/company_number.dart';
import 'package:tw_core/models/invoicing/value_objects/vat_number/vat_number.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/services/cache_service.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'edit_company_details_bloc.freezed.dart';
part 'edit_company_details_event.dart';
part 'edit_company_details_state.dart';

class EditCompanyDetailsBloc
    extends Bloc<EditCompanyDetailsEvent, EditCompanyDetailsState> {
  EditCompanyDetailsBloc() : super(EditCompanyDetailsState.initial()) {
    on<OnCompanyNumberInput>((event, emit) {
      emit(state.copyWith(
        companyNumber: CompanyNumber(event.input),
        resultOption: none(),
      ));
    });
    on<OnCompanyNameInput>((event, emit) {
      emit(state.copyWith(
        companyName: TWCompanyName(event.input),
        resultOption: none(),
      ));
    });
    on<OnVATNumberInput>((event, emit) {
      emit(state.copyWith(
        vatNumber: VATNumber(event.input),
        resultOption: none(),
      ));
    });
    on<OnCompanyAddressInput>((event, emit) {
      emit(state.copyWith(
        companyAddress: TWLocation(event.location),
        resultOption: none(),
      ));
    });
    on<OnRegisteredAddressInput>((event, emit) {
      emit(state.copyWith(
        registeredAddress: TWLocation(event.location),
        resultOption: none(),
      ));
    });

    on<SubmitPressed>((event, emit) async {
      emit(state.copyWith(
        showErrors: true,
        resultOption: none(),
      ));
      if (!state.allInputsValid) return;
      emit(state.copyWith(submissionInProgress: true));
      Either<TWServerError, Unit> result =
          await TAJContractor().saveCompanyDetails(
        companyName: state.companyName,
        companyNumber: state.companyNumber,
        vatNumber: state.vatNumber,
        registeredAddress: state.registeredAddress,
        companyAddress: state.companyAddress,
      );
      emit(state.copyWith(
        submissionInProgress: false,
        resultOption: optionOf(result),
      ));
    });
  }
}
