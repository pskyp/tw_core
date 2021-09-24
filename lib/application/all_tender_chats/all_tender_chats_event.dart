part of 'all_tender_chats_bloc.dart';

@freezed
class AllTenderChatsEvent with _$AllTenderChatsEvent {
  const factory AllTenderChatsEvent.streamChatRoomsUpdated(
    List<ChatRoom> chatRooms,
  ) = StreamChatRoomsUpdated;
  const factory AllTenderChatsEvent.streamTendersUpdated(
    List<Tender> tenders,
  ) = StreamTendersUpdated;
  const factory AllTenderChatsEvent.streamTenderBidsUpdated(
    List<BidOnTender> tenderBids,
  ) = StreamTenderBidsUpdated;
}
