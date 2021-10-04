import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/bid/job_bid.dart';
import 'package:tw_core/models/bid_on_tender/tender_bid.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/tender/tender_model.dart';

part 'joint_chat_bloc.freezed.dart';
part 'joint_chat_event.dart';
part 'joint_chat_state.dart';

class JointChatBloc extends Bloc<JointChatEvent, JointChatState> {
  JointChatBloc({required JointChatState chatState}) : super(chatState);

  @override
  Stream<JointChatState> mapEventToState(
    JointChatEvent event,
  ) async* {
    yield* event.map(
      openTenderChatRoom: (e) async* {
        print('emitting empty');
        yield JointChatStateEmpty();
        print('emitting tender chat state');
        yield JointTenderChatState(
          chatRoom: e.chatRoom,
          tender: e.tender,
          tenderBid: e.tenderBid,
        );
      },
      openJobChatRoom: (e) async* {
        // if (state is JointTenderChatState) return;
        yield JointChatStateEmpty();
        yield JointJobChatState(
          chatRoom: e.chatRoom,
          job: e.job,
          bid: e.bid,
        );
      },
    );
  }
}
