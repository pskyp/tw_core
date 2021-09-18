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
  final TWUser loggedInUser;

  AllchatsBloc({
    required this.chatFacade,
    required this.loggedInUser,
    required TAJFacade tajFacade,
  }) : super(
          AllchatsState.initial(
            chatFacade: chatFacade,
            tajFacade: tajFacade,
          ),
        ) {
    chatFacade.streamChatRooms(loggedInUser).listen((event) {
      add(AllchatsEvent.streamChatRoomsUpdated(event));
    });
    //   sl<JobService>().streamJobs.listen((event) {
    //     add(AllchatsEvent.streamAllJobsUpdated(event));
    //   });
    //   sl<JobService>().bids.listen((event) {
    //     add(AllchatsEvent.streamAllBidsUpdated(event));
    //   });
    //   sl<JobService>().streamTenders().listen((event) {
    //     add(AllchatsEvent.streamAllTendersUpdated(event));
    //   });
    //   sl<JobService>().streamTenderBids().listen((event) {
    //     add(AllchatsEvent.streamTenderBidsUpdated(event));
    // });
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
        yield state.copyWith(chatRooms: optionOf(e.chatRooms));
      },
    );
  }
}
