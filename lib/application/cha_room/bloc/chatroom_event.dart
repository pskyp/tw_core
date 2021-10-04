part of 'chatroom_bloc.dart';

@freezed
class ChatroomEvent with _$ChatroomEvent {
  const factory ChatroomEvent.messageSeen({
    required ChatItem chatItem,
  }) = MessageSeen;

  const factory ChatroomEvent.messagesStreamUpdated({
    required List<ChatItem>? chatItems,
  }) = MessagesStreamUpdated;

  const factory ChatroomEvent.sendMessagePressed(String text) =
      SendMessagePressed;
}
