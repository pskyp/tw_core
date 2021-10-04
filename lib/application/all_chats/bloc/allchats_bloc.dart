import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/services/chat_facade.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'allchats_bloc.freezed.dart';
part 'allchats_event.dart';
part 'allchats_state.dart';

class AllchatsBloc extends Bloc<AllchatsEvent, AllchatsState> {
  final ChatFacade chatFacade;
  final TAJFacade tajFacade;
  final TWUser loggedInUser;

  AllchatsBloc.job({
    required this.chatFacade,
    required this.loggedInUser,
    required this.tajFacade,
  }) : super(
          AllchatsState.initial(
            chatFacade: chatFacade,
            tajFacade: tajFacade,
            type: ChatType.Job,
          ),
        ) {
    chatFacade.streamChatRooms(loggedInUser).listen((event) {
      add(AllchatsEvent.streamChatRoomsUpdated(event));
    });
  }

  AllchatsBloc.tender({
    required this.chatFacade,
    required this.loggedInUser,
    required this.tajFacade,
  }) : super(
          AllchatsState.initial(
            chatFacade: chatFacade,
            tajFacade: tajFacade,
            type: ChatType.Tender,
          ),
        ) {
    chatFacade.streamChatRooms(loggedInUser).listen((event) {
      add(AllchatsEvent.streamChatRoomsUpdated(event));
    });
    // tajFacade.streamTenders().listen((event) {
    //   add(AllchatsEvent.streamAllTendersUpdated(event));
    // });
    // tajFacade.streamTenderBids().listen((event) {
    //   add(AllchatsEvent.streamTenderBidsUpdated(event));
    // });
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
        yield state.copyWith(allChatRooms: optionOf(e.chatRooms));
      },
    );
  }
}
