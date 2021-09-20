import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/bid/bid.dart';
import 'package:tw_core/models/bid_on_tender/bid_on_tender.dart';
import 'package:tw_core/models/chat_models/chat_item.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/services/chat_facade.dart';

part 'chatroom_bloc.freezed.dart';
part 'chatroom_event.dart';
part 'chatroom_state.dart';

class ChatroomBloc extends Bloc<ChatroomEvent, ChatroomState> {
  final ChatFacade chatService;
  final TWUser loggedInUser;
  ChatroomBloc({
    required this.loggedInUser,
    required this.chatService,
    required ChatRoom? chatRoom,
    required ChatType type,
    required Either<Job, Tender> work,
    required Either<Bid, BidOnTender> workBid,
  }) : super(
          ChatroomState.initial(
            chatRoom: chatRoom,
            type: type,
            workBid: workBid,
            work: work,
          ),
        ) {
    chatService
        .streamChat(ChatRoom.getChatRoomId(work, workBid))
        .listen((event) {
      add(ChatroomEvent.messagesStreamUpdated(chatItems: event));
    });
  }

  @override
  Stream<ChatroomState> mapEventToState(
    ChatroomEvent event,
  ) async* {
    yield* event.map(
      chatRoomsStreamUpdate: (e) async* {
        // int index = -1;
        // if (state.isTenderChat) {
        //   index = e.chatRooms.indexWhere((chatRoom) {
        //     return chatRoom.bidId == state.tenderBid!.bidId &&
        //         chatRoom.jobId == state.tender!.id;
        //   });
        // } else {
        //   index = e.chatRooms.indexWhere((chatRoom) {
        //     return chatRoom.bidId == state.bid!.bidId &&
        //         chatRoom.jobId == state.job!.jobId;
        //   });
        // }
        // ChatRoom? chatRoom = (index == -1) ? null : e.chatRooms[index];
        //
        // if (chatRoom != null) {
        //   chatService.streamChat(chatRoom).listen((event) {
        //     add(ChatroomEvent.messagesStreamUpdated(chatItems: event));
        //   });
        //
        //   yield state.copyWith(chatRoom: chatRoom);
        // }
      },
      roomOpenedWithNullChatRoom: (e) async* {
        // int index = -1;
        // if (state.isTenderChat) {
        //   if (state.tenderBid != null) {
        //     index = chatService.chatRooms.indexWhere((chatRoom) {
        //       return chatRoom.bidId == state.tenderBid!.bidId &&
        //           chatRoom.jobId == state.tender!.id;
        //     });
        //   }
        // } else {
        //   index = chatService.chatRooms.indexWhere((chatRoom) {
        //     return chatRoom.bidId == state.bid!.bidId &&
        //         chatRoom.jobId == state.job!.jobId;
        //   });
        // }
        // ChatRoom? chatRoom =
        //     (index == -1) ? null : chatService.chatRooms[index];
        // if (chatRoom != null) {
        //   chatService.streamChat(chatRoom).listen((event) {
        //     add(ChatroomEvent.messagesStreamUpdated(chatItems: event));
        //   });
        //   yield state.copyWith(chatRoom: chatRoom);
        // }
        // chatService.streamChatRooms.listen((event) {
        //   add(ChatroomEvent.chatRoomsStreamUpdate(chatRooms: event));
        // });
      },
      messageSeen: (e) async* {
        bool userIsSender =
            loggedInUser.uid == state.chatRoom!.lastChatItem!.senderUID;
        if (!userIsSender) {
          if (!e.chatItem.seenByAll) {
            chatService.setSeenToTrue(e.chatItem);
          }
          if (e.chatItem == state.chatRoom!.lastChatItem) {
            chatService.setChatRoomToSeen(state.chatRoom!);
          }
        }
      },
      messagesStreamUpdated: (e) async* {
        final sortedMessages = e.chatItems;
        sortedMessages!.sort((a, b) => a.sendTime.isAfter(b.sendTime) ? 1 : -1);

        yield state.copyWith(
          chatItems: optionOf(sortedMessages),
        );
      },
      sendMessagePressed: (e) async* {
        if (e.text.isEmpty) return;
        if (state.chatRoom != null) {
          chatService.sendMessageFromChatRoom(
            sender: loggedInUser,
            chatRoom: state.chatRoom!,
            text: e.text,
          );
        } else {
          if (state.type == ChatType.Tender) {
            chatService.sendMessageInTender(
              sender: loggedInUser,
              tender: state.tender!,
              tenderBid: state.tenderBid!,
              text: e.text,
            );
          } else {
            chatService.sendMessageInJob(
              sender: loggedInUser,
              job: state.job!,
              bid: state.bid!,
              text: e.text,
            );
          }
        }
      },
    );
  }
}
