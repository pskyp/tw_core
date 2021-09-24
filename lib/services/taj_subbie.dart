part of 'taj_facade.dart';

class TAJSubbie extends TAJFacade {
  static Option<List<BidReview>> allBidReviews = optionOf(null);
  static Option<List<Bid>> allBids = optionOf(null);
  static Option<List<Job>> allJobs = optionOf(null);

  Future<Either<TWServerError, Unit>> acceptJobOffer({
    required Job job,
    required Bid bid,
    required Subbie subbie,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.bidsCollection.doc(bid.bidId),
      bid.copyWithNeuStatus(BidStatuses.Hired).toJson(),
    );
    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> addContractorInBlackList({
    required Contractor contractor,
    required Subbie subbie,
  }) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.delete(TWFC.subbieCollection
        .doc(subbie.basicProfile.uid)
        .collection('favourite_contractors')
        .doc('favourite-contractor-id: ${contractor.basicProfile.uid}'));
    batch.set(
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('blacklisted_contractors')
          .doc('blacklisted-contractor-id: ${contractor.basicProfile.uid}'),
      contractor.basicProfile.toJson(),
    );
    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> addContractorInFavouriteList({
    required Contractor contractor,
    required Subbie subbie,
  }) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.delete(TWFC.subbieCollection
        .doc(subbie.basicProfile.uid)
        .collection('blacklisted_contractors')
        .doc('blacklisted-contractor-id: ${contractor.basicProfile.uid}'));
    batch.set(
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('favourite_contractors')
          .doc('favourite-contractor-id: ${contractor.basicProfile.uid}'),
      contractor.basicProfile.toJson(),
    );

    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> applyJob({
    required Job job,
    required Subbie subbie,
  }) async {
    try {
      Bid bid = Bid.neu(loggedInUser: subbie.basicProfile, job: job);

      var batch = FirebaseFirestore.instance.batch();
      batch.set(TWFC.bidsCollection.doc(bid.bidId), bid.toJson());
      batch.update(TWFC.jobCollection.doc(job.jobId), {
        'totalUnseenBids': FieldValue.increment(1),
      });
      batch.update(TWFC.jobCollection.doc(job.jobId), {
        'applications': FieldValue.increment(1),
      });

      batch.delete(TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('invites')
          .doc("inviteToBidForJobId: ${job.jobId}"));

      await batch.commit();
      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }

  onJobReviewsSubmit({
    required List<JobReview> jobReviews,
    required Subbie subbie,
  }) {
    var batch = FirebaseFirestore.instance.batch();
    for (final jobReview in jobReviews) {
      //store rating in ratings subcollcection
      batch.set(
          TWFC.jobReviewCollection
              .doc(jobReview.contractorId + jobReview.jobId),
          jobReview.toJson());
      //update total_ratings, and other attributes in contractor doc
      batch.update(TWFC.contractorsCollection.doc(jobReview.contractorId), {
        'totalRatings': FieldValue.increment(1),
        'totalReliability': FieldValue.increment(jobReview.rating.reliability),
        'totalEnvironment': FieldValue.increment(jobReview.rating.environment),
        'totalCommunication':
            FieldValue.increment(jobReview.rating.communication)
      });
    }

    //delete the pending ratings subcollection of user
    for (final jobReview in jobReviews) {
      batch.delete(TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('pending_job_ratings')
          .doc('pending_rating_contractor.uid: ${jobReview.contractorId}'));
    }
    batch.commit();
  }

  @override
  Stream<List<PendingContractorRating>?> pendingJobRatings(Subbie subbie) =>
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('pending_job_ratings')
          .snapshots()
          .map((list) => list.docs
              .map((doc) => PendingContractorRating.fromJson(doc.data()))
              .toList());

  Future<Either<TWServerError, Unit>> removeContractorFromBlackList({
    required String contractorId,
    required Subbie subbie,
  }) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.delete(TWFC.subbieCollection
        .doc(subbie.basicProfile.uid)
        .collection('blacklisted_contractors')
        .doc('blacklisted-contractor-id: $contractorId'));
    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> removeContractorFromFavouriteList({
    required String contractorId,
    required Subbie subbie,
  }) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.delete(TWFC.subbieCollection
        .doc(subbie.basicProfile.uid)
        .collection('favourite_contractors')
        .doc('favourite-contractor-id: $contractorId'));
    return (await commitBatch(batch));
  }

  Stream<List<Bid>> streamAllBidsBySubbie({required TWUser subbie}) {
    assert(subbie.type == TWUserType.Subbie);
    return TWFC.bidsCollection
        .where('subbieTWUser.uid', isEqualTo: subbie.uid)
        .snapshots()
        .map((list) {
      allBids =
          optionOf(list.docs.map((doc) => Bid.fromJson(doc.data())).toList());
      return allBids.getOrElse(() => []);
    });
  }

  Stream<List<BidReview>> subbieReviews(Subbie subbie) =>
      TWFC.bidReviewsCollection
          .where('subbieId', isEqualTo: subbie.basicProfile.uid)
          .snapshots()
          .map((list) {
        allBidReviews = optionOf(
            list.docs.map((doc) => BidReview.fromJson(doc.data())).toList());
        return allBidReviews.getOrElse(() => []);
      });

  Stream<List<InviteToBid>?> streamInvitesForSubbie(Subbie subbie) =>
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('invites')
          .snapshots()
          .map((list) =>
              list.docs.map((doc) => InviteToBid.fromMap(doc.data())).toList());

  Stream<List<Job>> streamAllJobs(TWUser subbie) =>
      TWFC.jobCollection.snapshots().map((list) {
        allJobs =
            optionOf(list.docs.map((doc) => Job.fromJson(doc.data())).toList());
        return allJobs.getOrElse(() => []);
      });

  Stream<List<TWUser>?> blacklistedContractors(Subbie subbie) =>
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('blacklisted_contractors')
          .snapshots()
          .map((list) =>
              list.docs.map((doc) => TWUser.fromJson(doc.data())).toList());

  Stream<List<TWUser>?> favouriteContractors(Subbie subbie) => TWFC
      .subbieCollection
      .doc(subbie.basicProfile.uid)
      .collection('favourite_contractors')
      .snapshots()
      .map((list) =>
          list.docs.map((doc) => TWUser.fromJson(doc.data())).toList());
}
