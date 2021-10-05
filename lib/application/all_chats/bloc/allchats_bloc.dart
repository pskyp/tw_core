import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/services/chat_facade.dart';

part 'allchats_bloc.freezed.dart';
part 'allchats_event.dart';
part 'allchats_state.dart';

class AllchatsBloc extends Bloc<AllchatsEvent, AllchatsState> {
  final ChatFacade chatFacade;
  final TWUser loggedInUser;

  AllchatsBloc({
    required this.chatFacade,
    required this.loggedInUser,
  }) : super(AllchatsState.initial(
          chatFacade: chatFacade,
        )) {
    chatFacade.streamChatRooms(loggedInUser).listen((event) {
      add(AllchatsEvent.streamChatRoomsUpdated(event));
    });
  }

  @override
  Future<void> close() {
    return super.close();
  }

  @override
  Stream<AllchatsState> mapEventToState(
    AllchatsEvent event,
  ) async* {
    yield* event.map(
      streamChatRoomsUpdated: (e) async* {
        yield AllchatsState(allChatRoomsOption: optionOf(e.chatRooms));
      },
    );
  }
}
