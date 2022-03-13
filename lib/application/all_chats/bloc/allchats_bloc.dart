import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/services/chat_facade.dart';

part 'allchats_bloc.freezed.dart';
part 'allchats_event.dart';
part 'allchats_state.dart';

class AllchatsBloc extends Bloc<AllchatsEvent, AllchatsState> {
  final TWUser loggedInUser;

  AllchatsBloc({
    required this.loggedInUser,
  }) : super(AllchatsState.initial()) {
    ChatFacade().streamChatRooms(loggedInUser).listen((event) {
      add(AllchatsEvent.streamChatRoomsUpdated(event));
    });

    on<StreamChatRoomsUpdated>((event, emit) async {
      emit(AllchatsState(allChatRoomsOption: optionOf(event.chatRooms)));
    });
  }
  @override
  Future<void> close() {
    return super.close();
  }
}
