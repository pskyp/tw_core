part of 'taj_facade.dart';

class TAJDeveloper extends TAJFacade {
  static Option<List<Development>> allDevelopments = optionOf(null);
  static Option<List<Supplement>> allSupplements = optionOf(null);
  static Option<List<TenderBid>> allTenderBids = optionOf(null);
  static Option<List<Tender>> allTenders = optionOf(null);

  TAJDeveloper();

  awardTender({
    required Tender tender,
    required TenderBid tenderBid,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();

    batch.update(
      TWFC.tenderBidsCollection.doc(tenderBid.bidIdentifier.bidId),
      tenderBid.copyWith(tenderBidStatus: TenderBidStatus.Awarded).toJson(),
    );
    batch.update(
      TWFC.tendersCollection.doc(tender.workIdentifier.workId),
      tender.copyWith(tenderStatus: TenderStatus.Awarded).toJson(),
    );
    return commitBatch(batch);
  }

  Future<Either<TWServerError, Unit>> tenderFeedback({
    required TWNumber rating,
    required Tender tender,
    required TenderBid tenderBid,
  }) async {
    await TWFC.tenderBidsCollection.doc(tenderBid.bidIdentifier.bidId).set(
          (tenderBid
              .copyWith(
                tenderBidStatus: TenderBidStatus.Completed,
                feedback: TenderBidFeedback(
                  rating: rating.getOrCrash().toDouble(),
                ),
              )
              .toJson()),
        );

    await TWFC.tendersCollection.doc(tender.workIdentifier.workId).set(tender
        .copyWith(
          tenderStatus: TenderStatus.Completed,
          feedbackByDeveloper: true,
        )
        .toJson());

    return right(unit);
  }

  Future<Either<TWServerError, Unit>> saveDevelopment({
    required DevTitle title,
    required DevDescription description,
    required TWLocation devLocation,
    required String devId,
    required Developer developer,
  }) async {
    Development dev = Development(
      developmentIdentifier: DevelopmentIdentifier(
        developerId: developer.twUser.uid,
        id: devId,
        title: title.getOrCrash(),
      ),
      description: description.getOrCrash(),
      location: devLocation.getOrCrash(),
    );
    WriteBatch batch = FirebaseFirestore.instance.batch();

    batch.set(TWFC.developmentsCollection.doc(dev.id), dev.toJson());
    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> saveSupplement({
    required String supplementId,
    required TWString supplementTitle,
    required TWString requirements,
    required TWNumber numberOfSubbies,
    required Trade selectedTrade,
    required Development development,
    required SupplementTimeLine supplementTimeLine,
    required Developer developer,
  }) async {
    Supplement supplement = Supplement(
      workIdentifier: WorkIdentifier.supplement(
        developmentIdentifier: development.developmentIdentifier,
        workId: supplementId,
        title: supplementTitle.getOrCrash(),
        employer: CacheService().developer.twUser,
      ),
      developerId: CacheService().developer.twUser.uid,
      status: SupplementStatus.Active,
      developer: developer,
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
      location: development.location,
      feedback: null,
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
        createdOn: tenderTimeline.createdAt.getOrCrash(),
        workIdentifier: WorkIdentifier.tender(
          developmentIdentifier: development.developmentIdentifier,
          workId: tenderId,
          title: tenderTitle,
          employer: developer.twUser,
        ),
        tenderStatus: TenderStatus.UnAwarded,
        tenderTimeLineStatus: TenderTimeLineStatus.New,
        feedbackByContractor: false,
        feedbackByDeveloper: false,
        developerId: developer.twUser.uid,
        trade: trade,
        inviteEmailOne: emailOne?.getOrCrash(),
        inviteEmailTwo: emailTwo?.getOrCrash(),
        requirements: requirements,
        location: development.location,
        applicationDeadLine: tenderTimeline.applicationDeadline.getOrCrash(),
        startDate: tenderTimeline.startDeadline.getOrCrash(),
        queriesDate: tenderTimeline.queriesDeadline.getOrCrash(),
        submissionDate: tenderTimeline.submissionDeadline.getOrCrash(),
        feedbackDate: tenderTimeline.feedbackDeadline.getOrCrash(),
        awardDate: tenderTimeline.awardDeadline.getOrCrash(),
        endDate: tenderTimeline.endDeadline.getOrCrash(),
        feedback: null,
      );
      await TWFC.tendersCollection.doc(tenderId).set(tender.toJson());

      String emailSubject = "Invitation to bid on tender";
      if (emailOne != null) {
        TenderInvitationMail tenderInvitationOne = tenderInvitation(
          email: emailOne,
          subject: emailSubject,
          developer: developer.twUser.company,
          reference: tender.workIdentifier.workId,
          location: tender.location.townOrCity,
          trade: tender.trade.toString(),
          summary: tender.workIdentifier.title,
          applicationby:
              DateFormat('dd-MM-yyyy').format(tender.applicationDeadLine),
          submissionby: DateFormat('dd-MM-yyyy').format(tender.submissionDate),
          start: DateFormat('dd-MM-yyyy').format(tender.startDate),
          finish: DateFormat('dd-MM-yyyy').format(tender.endDate),
        );
        await TWFC.mailsCollection.add(tenderInvitationOne.toJson());
      }

      if (emailTwo != null) {
        TenderInvitationMail tenderInvitationTwo = tenderInvitation(
          email: emailTwo,
          subject: emailSubject,
          developer: developer.twUser.company,
          reference: tender.workIdentifier.workId,
          location: tender.location.townOrCity,
          trade: tender.trade.toString(),
          summary: tender.workIdentifier.title,
          applicationby:
              DateFormat('dd-MM-yyyy').format(tender.applicationDeadLine),
          submissionby: DateFormat('dd-MM-yyyy').format(tender.submissionDate),
          start: DateFormat('dd-MM-yyyy').format(tender.startDate),
          finish: DateFormat('dd-MM-yyyy').format(tender.endDate),
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
    required String applicationby,
    required String submissionby,
  }) {
    return TenderInvitationMail(
      to: [email.getOrCrash()],
      // message: Message(subject: "THis is subject", text: "Hello Peter"),
      template: Message(
        data: {
          'reference': reference,
          'developer': developer,
          'trade': trade,
          'town': location,
          'applyby': applicationby,
          'submitby': submissionby,
          'start': start,
          'finish': finish,
          'summary': summary
        },
        name: "TenderInvite",
      ),
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
      return allTenders.getOrElse(() => []);
    });
  }

  Stream<List<Tender>> streamAllTendersForDevelopment(
      {required Development dev}) {
    return TWFC.tendersCollection
        .where('workIdentifier.developmentIdentifier.id', isEqualTo: dev.id)
        .snapshots()
        .map((list) =>
            list.docs.map((doc) => Tender.fromJson(doc.data())).toList());
  }

  Stream<List<Supplement>> streamAllSupplementsByDeveloper({
    required TWUser developer,
  }) {
    return TWFC.supplementCollection
        .where('developmentIdentifier.developerId', isEqualTo: developer.uid)
        .snapshots()
        .map((list) {
      allSupplements = optionOf(
        list.docs.map((doc) => Supplement.fromJson(doc.data())).toList(),
      );
      return allSupplements.getOrElse(() => []);
    });
  }

  Stream<List<Supplement>> streamAllSupplementsForDevelopment({
    required Development development,
  }) {
    return TWFC.supplementCollection
        .where(
          'developmentId',
          isEqualTo: development.id,
        )
        .snapshots()
        .map((list) {
      return list.docs.map((doc) => Supplement.fromJson(doc.data())).toList();
    });
  }

  Stream<List<Development>> streamAllDevsByDeveloper({
    required TWUser developer,
  }) {
    return TWFC.developmentsCollection
        .where('developmentIdentifier.developerId', isEqualTo: developer.uid)
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
    required TenderBid tenderBid,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.tenderBidsCollection.doc(tenderBid.bidIdentifier.bidId),
      tenderBid.copyWith(tenderBidStatus: TenderBidStatus.Invited).toJson(),
    );
    // batch.update(
    //   TWFC.tendersCollection.doc(tender.workIdentifier.workId),
    //   tender.copyWith(tenderStatus: TenderStatus.Invited).toJson(),
    // );
    return commitBatch(batch);
  }

  Stream<List<TenderBid>> streamAllBidsForTender({
    required Tender tender,
  }) {
    return TWFC.tenderBidsCollection
        .where(
          'bidIdentifier.workIdentifier.workId',
          isEqualTo: tender.workIdentifier.workId,
        )
        .snapshots()
        .map((list) {
      return list.docs.map((doc) => TenderBid.fromJson(doc.data())).toList();
    });
  }

  Stream<List<TenderBid>> streamAllBidsForAllTendersByDeveloper({
    required TWUser developer,
  }) {
    print(developer);
    assert(developer.type == TWUserType.Developer);
    return TWFC.tenderBidsCollection
        .where('bidIdentifier.workIdentifier.developmentIdentifier.developerId',
            isEqualTo: developer.uid)
        .snapshots()
        .map((list) {
      allTenderBids = optionOf(
          list.docs.map((doc) => TenderBid.fromJson(doc.data())).toList());

      return allTenderBids.getOrElse(() => []);
    });
  }

  Stream<List<TenderBid>> streamAllWonBidsForAllTendersByDeveloper({
    required TWUser developer,
  }) {
    print(developer);
    assert(developer.type == TWUserType.Developer);
    return TWFC.tenderBidsCollection
        .where('bidIdentifier.workIdentifier.developmentIdentifier.developerId',
            isEqualTo: developer.uid)
        .where('tenderBidStatus', isEqualTo: 'Awarded')
        .snapshots()
        .map((list) {
      allTenderBids = optionOf(
          list.docs.map((doc) => TenderBid.fromJson(doc.data())).toList());

      return allTenderBids.getOrElse(() => []);
    });
  }

  Stream<List<TenderBid>> streamAllActiveBidsForDevelopment({
    required List<Tender> tenders,
  }) {
    return TWFC.tenderBidsCollection
        .where(
          'bidIdentifier.workIdentifier.workId',
          whereIn:
              tenders.map((tender) => tender.workIdentifier.workId).toList(),
        )
        .where('tenderBidStatus', isEqualTo: 'UnAwarded')
        .snapshots()
        .map((list) {
      return list.docs.map((doc) => TenderBid.fromJson(doc.data())).toList();
    });
  }

  Stream<List<TenderBid>> streamAllAwardedBidsForDevelopment({
    required List<Tender> tenders,
  }) {
    return TWFC.tenderBidsCollection
        .where(
          'bidIdentifier.workIdentifier.workId',
          whereIn:
              tenders.map((tender) => tender.workIdentifier.workId).toList(),
        )
        .where('tenderBidStatus', isEqualTo: 'Awarded')
        .snapshots()
        .map((list) {
      return list.docs.map((doc) => TenderBid.fromJson(doc.data())).toList();
    });
  }

  Stream<List<TenderBid>> streamAllCompletedWorkForDevelopment({
    required List<Tender> tenders,
  }) {
    return TWFC.tenderBidsCollection
        .where(
          'bidIdentifier.workIdentifier.workId',
          whereIn:
              tenders.map((tender) => tender.workIdentifier.workId).toList(),
        )
        .where('tenderBidStatus', isEqualTo: 'Completed')
        .snapshots()
        .map((list) {
      return list.docs.map((doc) => TenderBid.fromJson(doc.data())).toList();
    });
  }

  tenderFeedBackComplete(Tender tender, TenderBid tenderBid) {
    print('not implemented tenderfeedback complete');
  }

  Future updateTender(Tender tender) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.tendersCollection.doc(tender.workIdentifier.workId),
      tender.toJson(),
    );
    return (await commitBatch(batch));
  }
}
