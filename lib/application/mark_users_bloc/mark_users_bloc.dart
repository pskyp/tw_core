import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:tw_core/models/core/marked_user/marked_user.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'mark_users_bloc.freezed.dart';
part 'mark_users_event.dart';
part 'mark_users_state.dart';

class MarkUsersBloc extends Bloc<MarkUsersEvent, MarkUsersState> {
  MarkUsersBloc() : super(MarkUsersState.initial()) {
    _fetchMarkedUsers();

    on<MarkedUsersFetched>((event, emit) async {
      emit(state.copyWith(
        fetchingMarkedUsers: false,
        markedUsersOption: optionOf(event.markedUsers),
        resultOption: optionOf(null),
      ));
    });

    on<MarkUserRequest>((event, emit) async {
      emit(state.copyWith(
        submissionInProgress: true,
        resultOption: optionOf(null),
      ));

      Either<TWServerError, Unit> result = await TAJFacade().markUser(
        userToBeMarked: event.userToBeMarked,
        markAsFavourite: event.markAsFavourite,
      );

      emit(state.copyWith(
        resultOption: optionOf(result),
        submissionInProgress: false,
        fetchingMarkedUsers: true,
      ));

      _fetchMarkedUsers();
    });

    on<UnMarkUserRequest>((event, emit) async {
      emit(state.copyWith(
        submissionInProgress: true,
        resultOption: optionOf(null),
      ));

      Either<TWServerError, Unit> result = await TAJFacade().unMarkUser(
        userToBeUnMarked: event.userToBeUnMarked,
      );

      emit(state.copyWith(
        resultOption: optionOf(result),
        submissionInProgress: false,
        fetchingMarkedUsers: true,
      ));

      _fetchMarkedUsers();
    });
  }

  _fetchMarkedUsers() async {
    KtList<MarkedUser> markedUsers = await TAJFacade().fetchMarkedUsers();
    add(MarkUsersEvent.markedUsersFetched(markedUsers));
  }
}
