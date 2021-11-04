part of 'taj_facade.dart';

class TAJContractor extends TAJFacade {
  // static Option<List<BidReview>> allBidReviews = optionOf(null);
  static Option<List<JobBid>> allBids = optionOf(null);
  static Option<List<Development>> allDevelopments = optionOf(null);
  static Option<List<Job>> allJobs = optionOf(null);
  static Option<List<Supplement>> allSupplements = optionOf(null);
  static Option<List<TenderBid>> allTenderBids = optionOf(null);
  static Option<List<Tender>> allTenders = optionOf(null);
  // static Option<List<Tender>> allTendersWonByContractor = optionOf(null);

  Option<List<TenderBid>> awardedTenderBidsOption() {
    return allTenderBids.fold(
      () => optionOf(null),
      (allTenderBidsByContractor) => optionOf(
        allTenderBidsByContractor
            .where(
              (tenderBid) =>
                  tenderBid.tenderBidStatus == TenderBidStatus.Awarded,
            )
            .toList(),
      ),
    );
  }

  Future<Either<TWServerError, Unit>> createJob({
    required DevelopmentIdentifier developmentIdentifier,
    required LocationModel location,
    required TWString jobTitle,
    required TWString jobDescription,
    required TWNumber jobRate,
    required JobTimeLine jobTimeLine,
    required TWNumber requiredNumberOfSubbies,
    required List<String> selectedRequirements,
    required Trade selectedTrade,
  }) async {
    Job job = Job.neu(
      developmentIdentifier: developmentIdentifier,
      location: location,
      jobTitle: jobTitle,
      jobDescription: jobDescription,
      jobRate: jobRate,
      jobTimeLine: jobTimeLine,
      requiredNumberOfSubbies: requiredNumberOfSubbies,
      selectedRequirements: selectedRequirements,
      selectedTrade: selectedTrade,
    );
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.set(TWFC.jobCollection.doc(job.workIdentifier.workId), job.toJson());
    return (await commitBatch(batch));
  }

  Stream<List<JobBid>> streamAllBidsForAllJobsByContractor({
    required TWUser contractor,
  }) {
    assert(contractor.type == TWUserType.Contractor);
    return TWFC.bidsCollection
        .where('contractorId', isEqualTo: contractor.uid)
        .snapshots()
        .map((list) {
      Option<List<JobBid>> allBids = optionOf(
          list.docs.map((doc) => JobBid.fromJson(doc.data())).toList());
      return allBids.getOrElse(() => []);
    });
  }

  Stream<List<JobBid>> streamBidsOnJob(String jobId) => TWFC.bidsCollection
          .where('jobId', isEqualTo: jobId)
          .snapshots()
          .map((list) {
        allBids = optionOf(
            list.docs.map((doc) => JobBid.fromJson(doc.data())).toList());
        return allBids.getOrElse(() => []);
      });

  Stream<List<Job>> allJobsByContractor({required TWUser contractor}) =>
      TWFC.jobCollection
          .where('contractorId', isEqualTo: contractor.uid)
          .snapshots()
          .map((list) {
        allJobs =
            optionOf(list.docs.map((doc) => Job.fromJson(doc.data())).toList());
        return allJobs.getOrElse(() => []);
      });

  Future<Either<TWServerError, Unit>> applyTender({
    required Tender tender,
    required Contractor contractor,
  }) async {
    TenderBid tenderBid = TenderBid.fromContractorAndTender(
      contractor: contractor,
      tender: tender,
    );
    var batch = FirebaseFirestore.instance.batch();
    batch.set(
      TWFC.tenderBidsCollection.doc(tenderBid.bidIdentifier.bidId),
      tenderBid.toJson(),
    );
    return commitBatch(batch);
  }

  Future feedbackByContractor(Tender tender) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.set(TWFC.tendersCollection.doc(tender.workIdentifier.workId),
        tender.copyWith(feedbackByContractor: true).toJson());
    return (await commitBatch(batch));
  }

  onBidSeenByContractor(final JobBid jobBid) {
    TWFC.bidsCollection
        .doc(jobBid.bidIdentifier.bidId)
        .update({'seenByContractor': true});
    TWFC.jobCollection
        .doc(jobBid.bidIdentifier.workIdentifier.workId)
        .update({'totalUnseenBids': FieldValue.increment(-1)});
  }

  Future<Either<TWServerError, Unit>> postJob({
    required Job job,
    required TWUser user,
  }) {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.set(TWFC.jobCollection.doc(job.workIdentifier.workId), job.toJson());
    return commitBatch(batch);
  }

  Future<Either<TWServerError, Unit>> saveJobRequirement({
    required TWString requirement,
  }) {
    Contractor contractor = CacheService().contractor;
    List<String> newSavedRequirements = List.from(
      contractor.savedJobRequirements..add(requirement.getOrCrash()),
    );

    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.set(
      TWFC.contractorsCollection.doc(contractor.basicProfile.uid),
      contractor.copyWith(savedJobRequirements: newSavedRequirements).toJson(),
    );
    return commitBatch(batch);
  }

  removeSubbieFromFavouriteList({
    required TWUser subbie,
    required TWUser contractor,
  }) {
    WriteBatch batch = FirebaseFirestore.instance.batch();

    batch.delete(TWFC.contractorsCollection
        .doc(contractor.uid)
        .collection('favourite_subbies')
        .doc('favourite-subbie-id: ${subbie.uid}'));
    return commitBatch(batch);
  }

  startBidding(String jobId) {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.update(TWFC.jobCollection.doc(jobId), {'acceptingBids': true});
    return commitBatch(batch);
  }

  removeSubbieFromBlackList({
    required TWUser subbie,
    required TWUser contractor,
  }) {
    WriteBatch batch = FirebaseFirestore.instance.batch();

    batch.delete(TWFC.contractorsCollection
        .doc(contractor.uid)
        .collection('blacklisted_subbies')
        .doc('blacklisted-subbie-id: ${subbie.uid}'));
    return commitBatch(batch);
  }

  sendInviteToBid({
    required List<TWUser> subbiesToInvite,
    required Job job,
  }) {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    for (final subbie in subbiesToInvite) {
      print('invited subbie id: ${subbie.uid}');
      batch.set(
        TWFC.subbieCollection
            .doc(subbie.uid)
            .collection('invites')
            .doc("inviteToBidForJobId: ${job.workIdentifier.workId}"),
        {
          'jobId': job.workIdentifier.workId,
          'jobTitle': job.workIdentifier.title,
        },
      );
    }

    return commitBatch(batch);
  }

  addSubbieInBlackList({
    required TWUser subbie,
    required TWUser contractor,
  }) {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.delete(TWFC.contractorsCollection
        .doc(contractor.uid)
        .collection('favourite_subbies')
        .doc('favourite-subbie-id: ${subbie.uid}'));
    batch.set(
      TWFC.contractorsCollection
          .doc(contractor.uid)
          .collection('blacklisted_subbies')
          .doc('blacklisted-subbie-id: ${subbie.uid}'),
      subbie.toJson(),
    );
    return commitBatch(batch);
  }

  Stream<List<JobBid>> bidsOnJob({required Job job}) {
    return TWFC.bidsCollection
        .where('bidIdentifier.workIdentifier.workId',
            isEqualTo: job.workIdentifier.workId)
        .snapshots()
        .map((list) =>
            list.docs.map((doc) => JobBid.fromJson(doc.data())).toList());
  }

  Stream<List<Invoice>> streamInvoicesOnJob({required Job job}) {
    return TWFC.invoicesCollection
        .where('jobID', isEqualTo: job.workIdentifier.workId)
        .snapshots()
        .map((list) =>
            list.docs.map((doc) => Invoice.fromJson(doc.data())).toList());
  }

  Stream<List<TenderBid>> streamTenderBids(TWUser user) {
    return TWFC.tenderBidsCollection
        .where('bidIdentifier.bidder.uid', isEqualTo: user.uid)
        .snapshots()
        .map((list) {
      List<TenderBid>? tenderBids =
          list.docs.map((doc) => TenderBid.fromJson(doc.data())).toList();
      allTenderBids = optionOf(tenderBids);
      return tenderBids;
    });
  }

  Stream<List<Supplement>> streamAllSupplements() {
    return TWFC.supplementCollection.snapshots().map((list) {
      List<Supplement>? supplements = list.docs
          .map((supplement) => Supplement.fromJson(supplement.data()))
          .toList();
      allSupplements = optionOf(supplements);
      return allSupplements.getOrElse(() => []);
    });
  }

  Stream<List<JobReview>> streamRatings(String jobId) =>
      TWFC.jobReviewCollection.where('jobId', isEqualTo: jobId).snapshots().map(
            (list) =>
                list.docs.map((doc) => JobReview.fromJson(doc.data())).toList(),
          );

  Stream<List<Job>> streamOldJobs({required TWUser contractor}) => TWFC
      .oldJobsCollection
      .where('contractorId', isEqualTo: contractor.uid)
      .snapshots()
      .map((list) => list.docs.map((doc) => Job.fromJson(doc.data())).toList());

  addSubbieInFavouriteList({
    required TWUser subbie,
    required TWUser contractor,
  }) {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.delete(TWFC.contractorsCollection
        .doc(contractor.uid)
        .collection('blacklisted_subbies')
        .doc('blacklisted-subbie-id: ${subbie.uid}'));
    batch.set(
      TWFC.contractorsCollection
          .doc(contractor.uid)
          .collection('favourite_subbies')
          .doc('favourite-subbie-id: ${subbie.uid}'),
      subbie.toJson(),
    );
    return commitBatch(batch);
  }

  Stream<List<TWUser>> blacklistedSubbies({required TWUser contractor}) =>
      TWFC.contractorsCollection
          .doc(contractor.uid)
          .collection('blacklisted_subbies')
          .snapshots()
          .map((list) =>
              list.docs.map((doc) => TWUser.fromJson(doc.data())).toList());

  Stream<List<TWUser>> favouriteSubbies({required TWUser contractor}) =>
      TWFC.contractorsCollection
          .doc(contractor.uid)
          .collection('favourite_subbies')
          .snapshots()
          .map((list) {
        List<TWUser> favouriteSubbies =
            list.docs.map((doc) => TWUser.fromJson(doc.data())).toList();
        return favouriteSubbies;
      });

  stopBidding(String jobId) {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.update(TWFC.jobCollection.doc(jobId), {'acceptingBids': false});
    return commitBatch(batch);
  }

  Stream<List<Tender>> streamAllTenders() {
    return TWFC.tendersCollection.snapshots().map((list) {
      List<Tender>? tenders =
          list.docs.map((doc) => Tender.fromJson(doc.data())).toList();
      allTenders = optionOf(tenders);
      return allTenders.getOrElse(() => []);
    });
  }

  Stream<List<Job>> streamJobsByContractor(TWUser contractor) =>
      TWFC.jobCollection
          .where('contractorId', isEqualTo: contractor.uid)
          .snapshots()
          .map((list) {
        allJobs =
            optionOf(list.docs.map((doc) => Job.fromJson(doc.data())).toList());
        return allJobs.getOrElse(() => []);
      });

  updateJob(Job job) {
    TWFC.jobCollection.doc(job.workIdentifier.workId).set(
          job.toJson(),
        );
  }
}
