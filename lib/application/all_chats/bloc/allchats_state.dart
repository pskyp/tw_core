part of 'allchats_bloc.dart';

@freezed
class AllchatsState with _$AllchatsState {
  const AllchatsState._();
  const factory AllchatsState({
    required Option<List<ChatRoom>> chatRooms,
    required Option<List<Job>> allJobs,
    required Option<List<Bid>> allBids,
    required Option<List<Tender>> allTenders,
    required Option<List<BidOnTender>> allTenderBids,
  }) = _AllchatsState;

  factory AllchatsState.initial({
    required ChatFacade chatFacade,
    required TAJFacade tajFacade,
  }) =>
      _AllchatsState(
        chatRooms: chatFacade.chatRooms,
        allJobs: tajFacade.allJobs,
        allBids: tajFacade.allBids,
        allTenders: tajFacade.allTenders,
        allTenderBids: tajFacade.allTenderBids,
      );

  bool get isLoadingTenderChats {
    return false;
    // return chatRooms.length > allTenders.length ||
    //     chatRooms.length > allTenderBids.length;
  }

  bool get isLoadingJobChats {
    return false;
    // return chatRooms.length > allJobs.length ||
    //     chatRooms.length > allBids.length;
  }

  Job? chatRoomJob(ChatRoom chatRoom) {
    if (chatRoom.isTenderChat) return null;
    return allJobs.getOrElse(() => []).singleWhereOrNull(
          (job) => job.jobId == chatRoom.jobId,
        );
  }

  Bid? chatRoomBid(ChatRoom chatRoom) {
    if (chatRoom.isTenderChat) return null;
    return allBids.getOrElse(() => []).singleWhereOrNull(
          (bid) => bid.bidId == chatRoom.bidId,
        );
  }

  Tender? chatRoomTender(ChatRoom chatRoom) {
    if (!chatRoom.isTenderChat) return null;
    return allTenders.getOrElse(() => []).singleWhereOrNull(
          (tender) => tender.id == chatRoom.jobId,
        );
  }

  BidOnTender? chatRoomTenderBid(ChatRoom chatRoom) {
    if (!chatRoom.isTenderChat) return null;
    return allTenderBids.getOrElse(() => []).singleWhereOrNull(
          (tenderBid) => tenderBid.bidId == chatRoom.bidId,
        );
  }

  List<ChatRoom> jobChatRooms() {
    return chatRooms
        .getOrElse(() => [])
        .where(
          (chatRoom) => !chatRoom.isTenderChat,
        )
        .toList();
  }

  List<ChatRoom> tenderChatRooms() {
    return chatRooms
        .getOrElse(() => [])
        .where(
          (chatRoom) => chatRoom.isTenderChat,
        )
        .toList();
  }
}
