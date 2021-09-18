part of 'allchats_bloc.dart';

@freezed
class AllchatsEvent with _$AllchatsEvent {
  const factory AllchatsEvent.streamChatRoomsUpdated(
    List<ChatRoom> chatRooms,
  ) = StreamChatRoomsUpdated;
  const factory AllchatsEvent.streamAllTendersUpdated(
      List<Tender> tenders,
      ) = StreamAllTendersUpdated;
  const factory AllchatsEvent.streamTenderBidsUpdated(
      List<BidOnTender> tenderBids,
      ) = StreamTenderBidsUpdated;

  const factory AllchatsEvent.streamAllJobsUpdated(
    List<Job> jobs,
  ) = StreamAllJobsUpdated;

  const factory AllchatsEvent.streamAllBidsUpdated(
    List<Bid> bids,
  ) = StreamAllBidsUpdated;
}
