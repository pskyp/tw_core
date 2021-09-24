import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/bid/bid.dart';
import 'package:tw_core/models/bid_on_tender/bid_on_tender.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/tender/tender_model.dart';
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

  StreamSubscription? bidsStream;
  StreamSubscription? jobsStream;
  StreamSubscription? tendersStream;
  StreamSubscription? tenderBidsStream;

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
    tendersStream?.cancel();
    tenderBidsStream?.cancel();
    chatFacade.streamChatRooms(loggedInUser).listen((event) {
      add(AllchatsEvent.streamChatRoomsUpdated(event));
    });

    if (loggedInUser.type == TWUserType.Contractor) {
      jobsStream = TAJContractor()
          .allJobsByContractor(contractor: loggedInUser)
          .listen((event) {
        add(AllchatsEvent.streamAllJobsUpdated(event));
      });
    } else if (loggedInUser.type == TWUserType.Subbie) {
      jobsStream = TAJSubbie().streamAllJobs(loggedInUser).listen((event) {
        add(AllchatsEvent.streamAllJobsUpdated(event));
      });
    }

    if (loggedInUser.type == TWUserType.Contractor) {
      bidsStream = TAJContractor()
          .streamAllBidsForAllJobsByContractor(contractor: loggedInUser)
          .listen((event) {
        add(AllchatsEvent.streamAllBidsUpdated(event));
      });
    } else if (loggedInUser.type == TWUserType.Subbie) {
      bidsStream = TAJSubbie()
          .streamAllBidsBySubbie(subbie: loggedInUser)
          .listen((event) {
        add(AllchatsEvent.streamAllBidsUpdated(event));
      });
    }
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
    jobsStream?.cancel();
    bidsStream?.cancel();
    tendersStream?.cancel();
    tenderBidsStream?.cancel();
    return super.close();
  }

  @override
  Stream<AllchatsState> mapEventToState(
    AllchatsEvent event,
  ) async* {
    yield* event.map(
      streamAllTendersUpdated: (e) async* {
        yield state.copyWith(allTenders: optionOf(e.tenders));
      },
      streamTenderBidsUpdated: (e) async* {
        yield state.copyWith(allTenderBids: optionOf(e.tenderBids));
      },
      streamAllBidsUpdated: (e) async* {
        yield state.copyWith(allBids: optionOf(e.bids));
      },
      streamAllJobsUpdated: (e) async* {
        yield state.copyWith(allJobs: optionOf(e.jobs));
      },
      streamChatRoomsUpdated: (e) async* {
        yield state.copyWith(allChatRooms: optionOf(e.chatRooms));
      },
    );
  }
}
