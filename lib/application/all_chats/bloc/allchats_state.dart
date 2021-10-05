part of 'allchats_bloc.dart';

class AllchatsState {
  final Option<List<ChatRoom>> _allChatRoomsOption;
  AllchatsState({
    required Option<List<ChatRoom>> allChatRoomsOption,
  }) : _allChatRoomsOption = allChatRoomsOption;

  factory AllchatsState.initial() =>
      AllchatsState(allChatRoomsOption: ChatFacade().chatRooms);

  Option<List<ChatRoom>> jobChatRoomsOption() {
    return _allChatRoomsOption.fold(
      () => optionOf(null),
      (allChatRooms) => optionOf(allChatRooms
          .where((chatRoom) => chatRoom.chatType == ChatType.Job)
          .toList()),
    );
  }

  Option<List<ChatRoom>> tenderAndSupplementChatRoomsOption() {
    return _allChatRoomsOption.fold(
      () => optionOf(null),
      (allChatRooms) => optionOf(
        allChatRooms
            .where((chatRoom) => chatRoom.chatType == ChatType.Tender)
            .toList(),
      ),
    );
  }

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

}
