part of 'tenders_bloc.dart';

@freezed
class TendersEvent with _$TendersEvent {
  const factory TendersEvent.tendersStreamUpdated(
    List<Tender> tenders,
  ) = TendersStreamUpdated;

  const factory TendersEvent.tenderBidsStreamUpdated(
    List<BidOnTender> tenderBids,
  ) = TenderBidsStreamUpdated;
  const factory TendersEvent.supplementsStreamUpdated(
    List<Supplement> supplements,
  ) = SupplementsStreamUpdated;
}
