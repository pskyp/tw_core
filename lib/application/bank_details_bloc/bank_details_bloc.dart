import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/user_bank_details/bank_account_number.dart';
import 'package:tw_core/models/user_bank_details/bank_sort_code.dart';
import 'package:tw_core/models/user_bank_details/user_bank_details.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'bank_details_bloc.freezed.dart';
part 'bank_details_event.dart';
part 'bank_details_state.dart';

class BankDetailsBloc extends Bloc<BankDetailsEvent, BankDetailsState> {
  BankDetailsBloc(UserBankDetails? userBankDetails)
      : super(BankDetailsState.initial(userBankDetails)) {
    on<OnAccountNumberInput>((event, emit) {
      emit(state.copyWith(accountNumber: BankAccountNumber(event.input)));
    });
    on<OnSortCodeInput>((event, emit) {
      emit(state.copyWith(sortCode: BankSortCode(event.input)));
    });
    on<OnSubmitPressed>((event, emit) async {
      emit(state.copyWith(showErrors: true));
      if (state.accountNumber.isNotValid || state.sortCode.isNotValid) return;
      emit(state.copyWith(submissionInProgress: true));
      Either<TWServerError, Unit> result = await TAJSubbie().saveBankDetails(
        accountNumber: state.accountNumber,
        sortCode: state.sortCode,
      );
      emit(
        state.copyWith(submissionInProgress: false, resultOption: some(result)),
      );
    });
  }
}
