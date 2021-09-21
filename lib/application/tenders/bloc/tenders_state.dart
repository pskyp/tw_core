part of 'tenders_bloc.dart';

@freezed
class TendersState with _$TendersState {
  const TendersState._();
  const factory TendersState({
    required Option<List<Tender>> allTenders,
    required Option<List<BidOnTender>> allTenderBids,
    required Option<List<Supplement>> allSupplements,
  }) = _TendersState;

  Option<List<Either<Tender, Supplement>>> get newWork {
    if (allTenders.isNone() || allSupplements.isNone()) return none();
    List<Either<Tender, Supplement>> combinedWorkList = [];
    allTendersList.forEach((tender) {
      combinedWorkList.add(left(tender));
    });
    allSupplementsList.forEach((supplement) {
      combinedWorkList.add(right(supplement));
    });
    return optionOf(combinedWorkList);
  }

  factory TendersState.initial(TAJFacade tajFacade) => _TendersState(
        allTenders: tajFacade.allTenders,
        allTenderBids: tajFacade.allTenderBids,
        allSupplements: tajFacade.allSupplements,
      );

  BidOnTender? tenderBid(Tender tender) {
    return allTenderBids.getOrElse(() => []).singleWhereOrNull(
          (bid) => bid.tenderId == tender.id,
        );
  }

  List<Tender> get allTendersList => allTenders.getOrElse(() => []);
  List<Supplement> get allSupplementsList => allSupplements.getOrElse(() => []);

  List<Tender> newTenders() {
    return allTendersList.where((tender) => tenderBid(tender) == null).toList();
  }

  bool hasAppliedTo(Tender tender) {
    return tenderBid(tender) != null;
  }

  bool isAwarded(Tender tender) {
    if (!hasAppliedTo(tender)) return false;
    return tenderBid(tender)!.status == TenderBidStatus.Awarded;
  }

  List<Tender> appliedTenders() {
    return allTendersList
        .where((tender) => hasAppliedTo(tender) && !isAwarded(tender))
        .toList();
  }

  List<Tender> tenderingTenders() {
    return allTendersList
        .where((tender) =>
            hasAppliedTo(tender) &&
            tenderBid(tender)!.status == TenderBidStatus.Invited)
        .toList();
  }

  List<Tender> awardedTenders() {
    return allTendersList.where((tender) => isAwarded(tender)).toList();
  }
}
