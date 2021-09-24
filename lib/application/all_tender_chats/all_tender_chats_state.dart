part of 'all_tender_chats_bloc.dart';

@freezed
class AllTenderChatsState with _$AllTenderChatsState {
  const AllTenderChatsState._();
  const factory AllTenderChatsState({
    required Option<List<Tender>> tenders,
    required Option<List<BidOnTender>> tenderBids,
    required Option<List<ChatRoom>> chatRooms,
    required Either<Contractor, Developer> loggedInUser,
  }) = _AllTenderChatsState;

  factory AllTenderChatsState.initial({
    required Either<Contractor, Developer> loggedInUser,
  }) =>
      _AllTenderChatsState(
        loggedInUser: loggedInUser,
        tenders: loggedInUser.fold((contractor) => TAJContractor.allTenders,
            (developer) => TAJDeveloper.allTenders),
        tenderBids: loggedInUser.fold(
          (contractor) => TAJContractor.allTenderBids,
          (developer) => TAJDeveloper.allTenderBids,
        ),
        chatRooms: TAJFacade.allChatRooms,
      );

  Tender? tender(ChatRoom chatRoom) {
    return tenders
        .getOrElse(() => [])
        .singleWhereOrNull((tender) => chatRoom.jobId == tender.id);
  }

  BidOnTender? tenderBid(ChatRoom chatRoom) {
    return tenderBids
        .getOrElse(() => [])
        .singleWhereOrNull((tenderBid) => chatRoom.bidId == tenderBid.bidId);
  }
}
