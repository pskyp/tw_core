part of 'all_job_chats_bloc.dart';

@freezed
class AllJobChatsEvent with _$AllJobChatsEvent {
  const factory AllJobChatsEvent.streamChatRoomsUpdated(
    List<ChatRoom> chatRooms,
  ) = StreamChatRoomsUpdated;
  const factory AllJobChatsEvent.streamJobsUpdated(
    List<Job> jobs,
  ) = StreamJobsUpdated;
  const factory AllJobChatsEvent.streamBidsUpdated(
    List<Bid> bids,
  ) = StreamBidsUpdated;
}
