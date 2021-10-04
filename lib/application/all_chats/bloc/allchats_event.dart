part of 'allchats_bloc.dart';

@freezed
class AllchatsEvent with _$AllchatsEvent {
  const factory AllchatsEvent.streamChatRoomsUpdated(
    List<ChatRoom> chatRooms,
  ) = StreamChatRoomsUpdated;
}
