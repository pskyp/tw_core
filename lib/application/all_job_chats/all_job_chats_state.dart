part of 'all_job_chats_bloc.dart';

@freezed
class AllJobChatsState with _$AllJobChatsState {
  const factory AllJobChatsState({
    required Option<List<Job>> jobs,
    required Option<List<Bid>> bids,
    required Option<List<ChatRoom>> chatRooms,
  }) = _AllJobChatsState;

  factory AllJobChatsState.initial() => _AllJobChatsState(
        jobs: optionOf(null),
        bids: optionOf(null),
        chatRooms: optionOf(null),
      );
}
