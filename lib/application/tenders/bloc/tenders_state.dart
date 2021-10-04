part of 'tenders_bloc.dart';

@freezed
class TendersState with _$TendersState {
  const TendersState._();
  const factory TendersState({
    required Option<List<Tender>> allTenders,
    required Option<List<TenderBid>> allTenderBids,
    required Option<List<Supplement>> allSupplements,
  }) = _TendersState;

  Option<List<Either<Tender, Supplement>>> get newWork {
    print(allTenders.isNone());
    print(allSupplements.isNone());
    if (allTenders.isNone() || allSupplements.isNone()) return none();
    List<Either<Tender, Supplement>> combinedWorkList = [];
    allTendersList.forEach((tender) {
      if (!hasAppliedTo(tender)) combinedWorkList.add(left(tender));
    });
    allSupplementsList.forEach((supplement) {
      combinedWorkList.add(right(supplement));
    });
    return optionOf(combinedWorkList);
  }

  Option<List<Either<Tender, Supplement>>> get completedWork {
    if (allTenders.isNone() || allSupplements.isNone()) return none();
    List<Either<Tender, Supplement>> combinedWorkList = [];
    allTendersList.forEach((tender) {
      if ((tenderBid(tender) != null) &&
          tender.tenderStatus == TenderStatus.Completed)
        combinedWorkList.add(left(tender));
    });
    allSupplementsList.forEach((supplement) {
      if (supplement.status == SupplementStatus.Completed)
        combinedWorkList.add(right(supplement));
    });
    return optionOf(combinedWorkList);
  }

  factory TendersState.initial() => _TendersState(
        allTenders: TAJContractor.allTenders,
        allTenderBids: TAJContractor.allTenderBids,
        allSupplements: TAJContractor.allSupplements,
      );

  TenderBid? tenderBid(Tender tender) {
    return allTenderBids.getOrElse(() => []).singleWhereOrNull(
          (bid) =>
              bid.bidIdentifier.workIdentifier.workId ==
              tender.workIdentifier.workId,
        );
  }

  List<Tender> get allTendersList => allTenders.getOrElse(() => []);
  List<Supplement> get allSupplementsList => allSupplements.getOrElse(() => []);

  List<Tender> newTenders() {
    return allTendersList.where((tender) => tenderBid(tender) == null).toList();
  }

  List<Tender> completedTenders() {
    return allTendersList
        .where((tender) => tender.tenderStatus == TenderStatus.Completed)
        .toList();
  }

  bool hasAppliedTo(Tender tender) {
    return tenderBid(tender) != null;
  }

  bool isAwarded(Tender tender) {
    if (!hasAppliedTo(tender)) return false;
    return tenderBid(tender)!.tenderBidStatus == TenderBidStatus.Awarded;
  }

  List<Tender> appliedTenders() {
    return allTendersList
        .where((tender) =>
            hasAppliedTo(tender) &&
            tenderBid(tender)!.tenderBidStatus == TenderBidStatus.New)
        .toList();
  }

  List<Tender> tenderingTenders() {
    return allTendersList
        .where((tender) =>
            hasAppliedTo(tender) &&
            tenderBid(tender)!.tenderBidStatus == TenderBidStatus.Invited)
        .toList();
  }

  List<Tender> awardedTenders() {
    return allTendersList.where((tender) => isAwarded(tender)).toList();
  }
}
