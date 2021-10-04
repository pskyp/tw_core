part of 'allchats_bloc.dart';

@freezed
class AllchatsState with _$AllchatsState {
  const AllchatsState._();
  const factory AllchatsState({
    required Option<List<ChatRoom>> allChatRooms,
    required ChatType type,
  }) = _AllchatsState;

  factory AllchatsState.initial({
    required ChatFacade chatFacade,
    required TAJFacade tajFacade,
    required ChatType type,
  }) =>
      _AllchatsState(
        allChatRooms: chatFacade.chatRooms,
        type: type,
      );

  // List<Job> get allJobsList => allJobs.getOrElse(() => []);
  // List<JobBid> get allBidsList => allBids.getOrElse(() => []);
  //
  // Job? job(ChatRoom chatRoom) {
  //   int index = -1;
  //   index = allJobsList
  //       .indexWhere((job) => job.workIdentifier.workId == chatRoom.jobId);
  //   return index == -1 ? null : allJobsList[index];
  // }
  //
  // Bid? bid(ChatRoom chatRoom) {
  //   int index = -1;
  //   index = allBidsList.indexWhere((bid) => bid.bidId == chatRoom.bidId);
  //   return index == -1 ? null : allBidsList[index];
  // }
  //
  // bool get isLoadingTenderChats {
  //   return allChatRooms.isNone() || allJobs.isNone() || allBids.isNone()
  //       ? true
  //       : false;
  // }
  //
  // bool get isLoadingJobChats {
  //   return allChatRooms.isNone() || allJobs.isNone() || allBids.isNone()
  //       ? true
  //       : false;
  // }
  //
  // Job? chatRoomJob(ChatRoom chatRoom) {
  //   if (chatRoom.isTenderChat) return null;
  //   return allJobs.getOrElse(() => []).singleWhereOrNull(
  //         (job) => job.workIdentifier.workId == chatRoom.jobId,
  //       );
  // }
  //
  // Bid? chatRoomBid(ChatRoom chatRoom) {
  //   if (chatRoom.isTenderChat) return null;
  //   return allBids.getOrElse(() => []).singleWhereOrNull(
  //         (bid) => bid.bidId == chatRoom.bidId,
  //       );
  // }
  //
  // Tender? chatRoomTender(ChatRoom chatRoom) {
  //   if (!chatRoom.isTenderChat) return null;
  //   return allTenders.getOrElse(() => []).singleWhereOrNull(
  //         (tender) => tender.workIdentifier.workId == chatRoom.jobId,
  //       );
  // }
  //
  // TenderBid? chatRoomTenderBid(ChatRoom chatRoom) {
  //   if (!chatRoom.isTenderChat) return null;
  //   return allTenderBids.getOrElse(() => []).singleWhereOrNull(
  //         (tenderBid) => tenderBid.bidId == chatRoom.bidId,
  //       );
  // }
  //
  // List<ChatRoom> jobChatRooms() {
  //   return allChatRooms
  //       .getOrElse(() => [])
  //       .where(
  //         (chatRoom) => !chatRoom.isTenderChat,
  //       )
  //       .toList();
  // }
  //
  // List<ChatRoom> tenderChatRooms() {
  //   return allChatRooms
  //       .getOrElse(() => [])
  //       .where(
  //         (chatRoom) => chatRoom.isTenderChat,
  //       )
  //       .toList();
  // }
}
