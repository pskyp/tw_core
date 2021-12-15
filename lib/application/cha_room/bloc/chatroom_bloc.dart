import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/chat_models/chat_item.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/services/chat_facade.dart';

part 'chatroom_bloc.freezed.dart';
part 'chatroom_event.dart';
part 'chatroom_state.dart';

class ChatRoomBlocArguments {
  final TWUser loggedInUser;
  final ChatRoom chatRoom;

  ChatRoomBlocArguments({
    required this.loggedInUser,
    required this.chatRoom,
  });
}

class ChatroomBloc extends Bloc<ChatroomEvent, ChatroomState> {
  final TWUser loggedInUser;
  ChatroomBloc({
    required this.loggedInUser,
    required ChatRoom chatRoom,
  }) : super(
          ChatroomState.initial(chatRoom: chatRoom),
        ) {
    ChatFacade()
        .streamChat(
            ChatRoom.getChatRoomId(bidIdentifier: chatRoom.bidIdentifier))
        .listen((event) {
      add(ChatroomEvent.messagesStreamUpdated(chatItems: event));
    });

    on<MessagesStreamUpdated>((e, emit) {
      final sortedMessages = e.chatItems;
      sortedMessages!.sort((a, b) => a.sendTime.isAfter(b.sendTime) ? 1 : -1);

      emit(state.copyWith(
        chatItems: optionOf(sortedMessages),
      ));
    });

    on<MessageSeen>((e, emit) {
      bool userIsSender =
          loggedInUser.uid == state.chatRoom.lastChatItem!.senderUID;
      if (!userIsSender) {
        if (!e.chatItem.seenByAll) {
          ChatFacade().setSeenToTrue(e.chatItem);
        }
        if (e.chatItem == state.chatRoom.lastChatItem) {
          ChatFacade().setChatRoomToSeen(state.chatRoom);
        }
      }
    });

    on<SendMessagePressed>((e, emit) {
      if (e.text.isEmpty) return;
      ChatFacade().sendMessageFromChatRoom(
        sender: loggedInUser,
        chatRoom: state.chatRoom,
        text: e.text,
      );
    });
  }
  //
  // @override
  // Stream<ChatroomState> mapEventToState(
  //   ChatroomEvent event,
  // ) async* {
  //   yield* event.map(
  //     messageSeen: (e) async* {
  //       bool userIsSender =
  //           loggedInUser.uid == state.chatRoom.lastChatItem!.senderUID;
  //       if (!userIsSender) {
  //         if (!e.chatItem.seenByAll) {
  //           ChatFacade().setSeenToTrue(e.chatItem);
  //         }
  //         if (e.chatItem == state.chatRoom.lastChatItem) {
  //           ChatFacade().setChatRoomToSeen(state.chatRoom);
  //         }
  //       }
  //     },
  //     messagesStreamUpdated: (e) async* {
  //       final sortedMessages = e.chatItems;
  //       sortedMessages!.sort((a, b) => a.sendTime.isAfter(b.sendTime) ? 1 : -1);
  //
  //       yield state.copyWith(
  //         chatItems: optionOf(sortedMessages),
  //       );
  //     },
  //     sendMessagePressed: (e) async* {
  //       if (e.text.isEmpty) return;
  //       ChatFacade().sendMessageFromChatRoom(
  //         sender: loggedInUser,
  //         chatRoom: state.chatRoom,
  //         text: e.text,
  //       );
  //     },
  //   );
  // }
}
