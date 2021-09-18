part of 'chatroom_bloc.dart';

@freezed
class ChatroomEvent with _$ChatroomEvent {
  const factory ChatroomEvent.roomOpenedWithNullChatRoom() =
      RoomOpenedWithNullChatRoom;

  const factory ChatroomEvent.chatRoomsStreamUpdate({
    required List<ChatRoom> chatRooms,
  }) = ChatRoomsStreamUpdate;

  const factory ChatroomEvent.messageSeen({
    required ChatItem chatItem,
  }) = MessageSeen;

  const factory ChatroomEvent.messagesStreamUpdated({
    required List<ChatItem>? chatItems,
  }) = MessagesStreamUpdated;

  const factory ChatroomEvent.sendMessagePressed(String text) =
      SendMessagePressed;
}
