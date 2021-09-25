part of 'taj_facade.dart';

class TAJDeveloper extends TAJFacade {
  static Option<List<Development>> allDevelopments = optionOf(null);
  static Option<List<Supplement>> allSupplements = optionOf(null);
  static Option<List<BidOnTender>> allTenderBids = optionOf(null);
  static Option<List<Tender>> allTenders = optionOf(null);

  TAJDeveloper();

  awardTender({
    required Tender tender,
    required BidOnTender tenderBid,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();

    batch.update(
      TWFC.tenderBidsCollection.doc(tenderBid.bidId),
      tenderBid.copyWithStatusAwarded().toJson(),
    );
    batch.update(
      TWFC.tendersCollection.doc(tender.id),
      tender.copyWithStatusAwarded().toJson(),
    );
    return commitBatch(batch);
  }

  Future<Either<TWServerError, Unit>> saveDevelopment({
    required DevTitle title,
    required DevDescription description,
    required TWLocation devLocation,
    required String devId,
    required Developer developer,
  }) async {
    Development dev = Development(
      id: devId,
      developerId: developer.twUser.uid,
      devTitle: title.getOrCrash(),
      description: description.getOrCrash(),
      location: devLocation.getOrCrash(),
    );
    WriteBatch batch = FirebaseFirestore.instance.batch();

    batch.set(TWFC.developmentsCollection.doc(dev.id), dev.toJson());
    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> saveSupplement({
    required TWString supplementTitle,
    required TWString requirements,
    required TWNumber numberOfSubbies,
    required Trade selectedTrade,
    required Development development,
    required SupplementTimeLine supplementTimeLine,
    required Developer developer,
  }) async {
    Supplement supplement = Supplement(
      status: SupplementStatus.Active,
      developer: developer,
      development: development.devTitle,
      description: development.description,
      hourlyRate: 100,
      hrsPerDay: 0,
      title: supplementTitle.getOrCrash(),
      startDate: supplementTimeLine.startDate.getOrCrash(),
      endDate: supplementTimeLine.endDate.getOrCrash(),
      subbiesRequired: numberOfSubbies.getOrCrash(),
      requirements: requirements.getOrCrash(),
      createdOn: DateTime.now(),
      applications: 0,
      subbiesWorking: 0,
      trade: selectedTrade,
      acceptingBids: true,
      totalUnseenBids: 0,
      refreshCounter: 0,
      location: development.location,
    );
    WriteBatch batch = FirebaseFirestore.instance.batch();

    batch.set(
      TWFC.supplementCollection.doc(),
      supplement.toJson(),
    );
    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> saveTender({
    required String tenderTitle,
    required Trade trade,
    required String requirements,
    required EmailAddress? emailOne,
    required EmailAddress? emailTwo,
    required TenderTimeline tenderTimeline,
    required Development development,
    required String tenderId,
    required Developer developer,
  }) async {
    try {
      Tender tender = Tender(
        developerTWUser: developer.twUser,
        tenderStatus: TenderStatus.New,
        tenderTimeLineStatus: TenderTimeLineStatus.New,
        id: tenderId,
        developmentId: development.id,
        feedbackByContractor: false,
        feedbackByDeveloper: false,
        rating: 0,
        developerId: developer.twUser.uid,
        tenderTitle: tenderTitle,
        trade: trade,
        inviteEmailOne: emailOne?.getOrCrash(),
        inviteEmailTwo: emailTwo?.getOrCrash(),
        requirements: requirements,
        location: development.location,
        createdAt: tenderTimeline.createdAt.getOrCrash(),
        applicationDeadLine: tenderTimeline.applicationDeadline.getOrCrash(),
        startDate: tenderTimeline.startDeadline.getOrCrash(),
        queriesDate: tenderTimeline.queriesDeadline.getOrCrash(),
        submissionDate: tenderTimeline.submissionDeadline.getOrCrash(),
        feedbackDate: tenderTimeline.feedbackDeadline.getOrCrash(),
        awardDate: tenderTimeline.awardDeadline.getOrCrash(),
        endDate: tenderTimeline.endDeadline.getOrCrash(),
      );
      await TWFC.tendersCollection.doc(tenderId).set(tender.toJson());

      String emailSubject = "Invitation to bid on tender";
      if (emailOne != null) {
        TenderInvitationMail tenderInvitationOne = tenderInvitation(
          email: emailOne,
          subject: emailSubject,
          developer: tender.developmentId,
          reference: tender.id,
          location: tender.location.townOrCity,
          trade: tender.trade.toString(),
          summary: tender.tenderTitle,
          start: tender.startDate.toString(),
          finish: tender.endDate.toString(),
        );
        await TWFC.mailsCollection.add(tenderInvitationOne.toJson());
      }

      if (emailTwo != null) {
        TenderInvitationMail tenderInvitationTwo = tenderInvitation(
          email: emailTwo,
          subject: emailSubject,
          developer: tender.developmentId,
          reference: tender.id,
          location: tender.location.townOrCity,
          trade: tender.trade.toString(),
          summary: tender.tenderTitle,
          start: tender.startDate.toString(),
          finish: tender.endDate.toString(),
        );
        await TWFC.mailsCollection.add(tenderInvitationTwo.toJson());
      }
      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }

  TenderInvitationMail tenderInvitation({
    required EmailAddress email,
    required String subject,
    required String reference,
    required String developer,
    required String trade,
    required String location,
    required String summary,
    required String start,
    required String finish,
  }) {
    return TenderInvitationMail(
      to: [email.getOrCrash()],
      message: Message(subject: "THis is subject", text: "Hello Peter"),
      // template: Message(
      //   data: {
      //     'reference': reference,
      //     'developer': developer,
      //     'trade': trade,
      //     'town': location,
      //     'start':start,
      //     'finish':finish,
      //     'summary':summary
      //   },
      //   name: "TenderInvite",
      // ),
    );
  }

  Stream<List<Tender>> streamAllTendersByDeveloper({
    required TWUser developer,
  }) {
    return TWFC.tendersCollection
        .where('developerId', isEqualTo: developer.uid)
        .snapshots()
        .map((list) {
      allTenders = optionOf(
          list.docs.map((doc) => Tender.fromJson(doc.data())).toList());
      print(
          'all tenders by developer length: ${allTenders.fold(() => 'null', (a) => a.length)}');
      return allTenders.getOrElse(() => []);
    });
  }

  Stream<List<Supplement>> streamAllSupplementsByDeveloper({
    required TWUser developer,
  }) {
    return TWFC.supplementCollection
        .where('developer.twUser.uid', isEqualTo: developer.uid)
        .snapshots()
        .map((list) {
      allSupplements = optionOf(
        list.docs.map((doc) => Supplement.fromJson(doc.data())).toList(),
      );
      return allSupplements.getOrElse(() => []);
    });
  }

  Stream<List<Development>> streamAllDevsByDeveloper({
    required TWUser developer,
  }) {
    return TWFC.developmentsCollection
        .where('developerId', isEqualTo: developer.uid)
        .snapshots()
        .map((list) {
      allDevelopments = optionOf(
        list.docs.map((doc) => Development.fromJson(doc.data())).toList(),
      );
      return allDevelopments.getOrElse(() => []);
    });
  }

  inviteToTendering({
    required Tender tender,
    required List<BidOnTender> tenderBids,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();

    tenderBids.forEach((bidOnTender) {
      batch.update(
        TWFC.tenderBidsCollection.doc(bidOnTender.bidId),
        bidOnTender.copyWithStatusInvited().toJson(),
      );
    });
    batch.update(TWFC.tendersCollection.doc(tender.id),
        tender.copyWithStatusInvited().toJson());
    return commitBatch(batch);
  }

  Stream<List<BidOnTender>> streamAllBidsForAllTendersByDeveloper({
    required TWUser developer,
  }) {
    assert(developer.type == TWUserType.Developer);
    return TWFC.tenderBidsCollection
        .where('developerId', isEqualTo: developer.uid)
        .snapshots()
        .map((list) {
      allTenderBids = optionOf(
          list.docs.map((doc) => BidOnTender.fromJson(doc.data())).toList());
      print(
          'all tenderBids for all tenders by developer length: ${allTenderBids.fold(() => 'null', (a) => a.length)}');
      return allTenderBids.getOrElse(() => []);
    });
  }

  tenderFeedBackComplete(Tender tender, BidOnTender tenderBid) {
    print('not implemented tenderfeedback complete');
  }

  Future updateTender(Tender tender) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.update(TWFC.tendersCollection.doc(tender.id), tender.toJson());
    return (await commitBatch(batch));
  }
}
