import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/bid_on_tender/tender_bid.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/developer/developer.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'all_tender_chats_bloc.freezed.dart';
part 'all_tender_chats_event.dart';
part 'all_tender_chats_state.dart';

class AllTenderChatsBloc
    extends Bloc<AllTenderChatsEvent, AllTenderChatsState> {
  final Either<Contractor, Developer> loggedInUser;
  StreamSubscription? tenderBidsStream;
  StreamSubscription? tendersStream;
  StreamSubscription? chatRoomsStream;

  AllTenderChatsBloc(this.loggedInUser)
      : super(AllTenderChatsState.initial(
          loggedInUser: loggedInUser,
        )) {
    loggedInUser.fold(
      (contractor) {
        chatRoomsStream = TAJFacade()
            .streamAllTenderChatsOfUser(contractor.basicProfile)
            .listen((event) {
          add(AllTenderChatsEvent.streamChatRoomsUpdated(event));
        });
        tenderBidsStream = TAJContractor()
            .streamTenderBids(contractor.basicProfile)
            .listen((tenderBids) {
          add(AllTenderChatsEvent.streamTenderBidsUpdated(tenderBids));
        });
        tendersStream = TAJContractor().streamAllTenders().listen((allTenders) {
          add(AllTenderChatsEvent.streamTendersUpdated(allTenders));
        });
      },
      (developer) {
        chatRoomsStream = TAJFacade()
            .streamAllTenderChatsOfUser(developer.twUser)
            .listen((event) {
          add(AllTenderChatsEvent.streamChatRoomsUpdated(event));
        });
        tenderBidsStream = TAJDeveloper()
            .streamAllBidsForAllTendersByDeveloper(developer: developer.twUser)
            .listen((event) {
          print('tenderBids stream updated');
          add(AllTenderChatsEvent.streamTenderBidsUpdated(event));
        });
        tendersStream = TAJDeveloper()
            .streamAllTendersByDeveloper(developer: developer.twUser)
            .listen((event) {
          print('tenders stream updated');
          add(AllTenderChatsEvent.streamTendersUpdated(event));
        });
      },
    );
  }

  @override
  Future<void> close() {
    tenderBidsStream?.cancel();
    tendersStream?.cancel();
    chatRoomsStream?.cancel();
    return super.close();
  }

  @override
  Stream<AllTenderChatsState> mapEventToState(
    AllTenderChatsEvent event,
  ) async* {
    yield* event.map(
      streamChatRoomsUpdated: (e) async* {
        yield state.copyWith(chatRooms: optionOf(e.chatRooms));
      },
      streamTenderBidsUpdated: (e) async* {
        yield state.copyWith(tenderBids: optionOf(e.tenderBids));
      },
      streamTendersUpdated: (e) async* {
        yield state.copyWith(tenders: optionOf(e.tenders));
      },
    );
  }
}
