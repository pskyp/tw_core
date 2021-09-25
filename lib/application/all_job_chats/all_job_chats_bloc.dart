import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/bid/bid.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/subbie/subbie_model.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'all_job_chats_bloc.freezed.dart';
part 'all_job_chats_event.dart';
part 'all_job_chats_state.dart';

class AllJobChatsBloc extends Bloc<AllJobChatsEvent, AllJobChatsState> {
  final Either<Contractor, Subbie> loggedInUser;
  StreamSubscription? jobsStream;
  StreamSubscription? bidsStream;
  StreamSubscription? chatRoomsStream;

  AllJobChatsBloc({required this.loggedInUser})
      : super(AllJobChatsState.initial(user: loggedInUser)) {
    loggedInUser.fold(
      (contractor) {
        chatRoomsStream = TAJFacade()
            .streamAllJobChatsOfUser(contractor.basicProfile)
            .listen((event) {
          add(AllJobChatsEvent.streamChatRoomsUpdated(event));
        });
        jobsStream = TAJContractor()
            .streamJobsByContractor(contractor.basicProfile)
            .listen((event) {
          add(AllJobChatsEvent.streamJobsUpdated(event));
        });
        bidsStream = TAJContractor()
            .streamAllBidsForAllJobsByContractor(
                contractor: contractor.basicProfile)
            .listen((event) {
          add(AllJobChatsEvent.streamBidsUpdated(event));
        });
      },
      (subbie) {
        chatRoomsStream = TAJFacade()
            .streamAllJobChatsOfUser(subbie.basicProfile)
            .listen((event) {
          add(AllJobChatsEvent.streamChatRoomsUpdated(event));
        });
        jobsStream =
            TAJSubbie().streamAllJobs(subbie.basicProfile).listen((event) {
          add(AllJobChatsEvent.streamJobsUpdated(event));
        });
        bidsStream = TAJSubbie()
            .streamAllBidsBySubbie(subbie: subbie.basicProfile)
            .listen((event) {
          add(AllJobChatsEvent.streamBidsUpdated(event));
        });
        // jobsStream = TAJSubbie().str
      },
    );
  }

  @override
  Future<void> close() {
    jobsStream?.cancel();
    bidsStream?.cancel();
    chatRoomsStream?.cancel();
    return super.close();
  }

  @override
  Stream<AllJobChatsState> mapEventToState(
    AllJobChatsEvent event,
  ) async* {
    yield* event.map(
      streamChatRoomsUpdated: (e) async* {
        yield state.copyWith(chatRooms: optionOf(e.chatRooms));
      },
      streamJobsUpdated: (e) async* {
        yield state.copyWith(jobs: optionOf(e.jobs));
      },
      streamBidsUpdated: (e) async* {
        yield state.copyWith(bids: optionOf(e.bids));
      },
    );
  }
}
