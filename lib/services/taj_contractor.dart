part of 'taj_facade.dart';

class TAJContractor extends TAJFacade {
  static Option<List<BidReview>> allBidReviews = optionOf(null);
  static Option<List<Bid>> allBids = optionOf(null);
  static Option<List<Development>> allDevelopments = optionOf(null);
  static Option<List<Job>> allJobs = optionOf(null);
  static Option<List<Supplement>> allSupplements = optionOf(null);
  static Option<List<BidOnTender>> allTenderBids = optionOf(null);
  static Option<List<Tender>> allTenders = optionOf(null);

  Future<Either<TWServerError, Unit>> createJob({
    required LocationModel location,
    required TWString devTitle,
    required TWString jobTitle,
    required TWString jobDescription,
    required TWNumber jobRate,
    required JobTimeLine jobTimeLine,
    required TWNumber requiredNumberOfSubbies,
    required List<String> selectedRequirements,
    required Trade selectedTrade,
  }) async {
    Job job = Job.neu(
      location: location,
      devTitle: devTitle,
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

  Stream<List<Bid>> streamAllBidsForAllJobsByContractor({
    required TWUser contractor,
  }) {
    assert(contractor.type == TWUserType.Contractor);
    return TWFC.bidsCollection
        .where('contractorId', isEqualTo: contractor.uid)
        .snapshots()
        .map((list) {
      Option<List<Bid>> allBids =
          optionOf(list.docs.map((doc) => Bid.fromJson(doc.data())).toList());
      return allBids.getOrElse(() => []);
    });
  }

  Stream<List<Bid>> streamBidsOnJob(String jobId) => TWFC.bidsCollection
          .where('jobId', isEqualTo: jobId)
          .snapshots()
          .map((list) {
        allBids =
            optionOf(list.docs.map((doc) => Bid.fromJson(doc.data())).toList());
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
    var bidOnTender = BidOnTender.fromContractorAndTender(
      contractor,
      tender,
    );
    var batch = FirebaseFirestore.instance.batch();
    batch.set(
      TWFC.tenderBidsCollection.doc(bidOnTender.bidId),
      bidOnTender.toJson(),
    );
    batch.set(
      TWFC.contractorsCollection
          .doc(contractor.basicProfile.uid)
          .collection('applied_tender_ids')
          .doc(tender.workIdentifier.workId),
      {
        'tenderId': tender.workIdentifier.workId,
      },
    );
    return commitBatch(batch);
  }

  onBidSeenByContractor(final Bid bid) {
    TWFC.bidsCollection.doc(bid.bidId).update({'seenByContractor': true});
    TWFC.jobCollection
        .doc(bid.jobId)
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
      contractor
          .copyWith(newSavedJobRequirements: newSavedRequirements)
          .toJson(),
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

  Stream<List<Bid>> bidsOnJob({required Job job}) {
    return TWFC.bidsCollection
        .where('jobId', isEqualTo: job.workIdentifier.workId)
        .snapshots()
        .map((list) =>
            list.docs.map((doc) => Bid.fromJson(doc.data())).toList());
  }

  Stream<List<BidOnTender>> streamTenderBids(TWUser user) {
    return TWFC.tenderBidsCollection
        .where('bidderId', isEqualTo: user.uid)
        .snapshots()
        .map((list) {
      List<BidOnTender>? tenderBids =
          list.docs.map((doc) => BidOnTender.fromJson(doc.data())).toList();
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
