part of 'all_job_chats_bloc.dart';

@freezed
class AllJobChatsState with _$AllJobChatsState {
  const AllJobChatsState._();
  const factory AllJobChatsState({
    required Option<List<Job>> jobs,
    required Option<List<Bid>> bids,
    required Option<List<ChatRoom>> chatRooms,
  }) = _AllJobChatsState;

  factory AllJobChatsState.initial(
          {required Either<Contractor, Subbie> user}) =>
      _AllJobChatsState(
        jobs: user.fold(
          (contractor) => TAJContractor.allJobs,
          (subbie) => TAJSubbie.allJobs,
        ),
        bids: user.fold(
          (contractor) => TAJContractor.allBids,
          (subbie) => TAJSubbie.allBids,
        ),
        chatRooms: TAJFacade.allChatRooms,
      );

  Option<JobChat> jobChat(ChatRoom chatRoom) {
    if (bid(chatRoom) == null || job(chatRoom) == null) {
      return optionOf(null);
    }
    return optionOf(
      JobChat(
        chatRoom: chatRoom,
        bid: bid(chatRoom)!,
        job: job(chatRoom)!,
      ),
    );
  }

  Bid? bid(ChatRoom chatRoom) {
    return bids
        .getOrElse(() => [])
        .singleWhereOrNull((bid) => bid.bidId == chatRoom.bidId);
  }

  Job? job(ChatRoom chatRoom) {
    return jobs.getOrElse(() => []).singleWhereOrNull(
        (job) => job.workIdentifier.workId == chatRoom.jobId);
  }
}
