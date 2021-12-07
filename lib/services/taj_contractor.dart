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

  Future<Either<TWServerError, Unit>> saveCompanyDetails({
    required TWCompanyName companyName,
    required CompanyNumber companyNumber,
    required VATNumber vatNumber,
    required TWLocation registeredAddress,
    required TWLocation companyAddress,
  }) async {
    ContractorCompanyDetails companyDetails = ContractorCompanyDetails(
      companyName: companyName.getOrCrash(),
      companyNumber: companyNumber.getOrCrash(),
      vatNumber: vatNumber.getOrCrash(),
      registeredAddress: registeredAddress.getOrCrash(),
      companyAddress: companyAddress.getOrCrash(),
    );
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.contractorsCollection
          .doc(CacheService().contractor.basicProfile.uid),
      {'companyDetails': companyDetails.toJson()},
    );

    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> toggleSubscription() async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    Contractor contractor = CacheService().contractor;
    batch.update(
      TWFC.contractorsCollection.doc(contractor.basicProfile.uid),
      {
        'subscribed': contractor.subscribed ? false : true,
      },
    );

    await batch.commit();
    return right(unit);
  }

  Stream<List<TenderBid>> streamTenderBids() {
    Contractor contractor = CacheService().contractor;
    return TWFC.tenderBidsCollection
        .where('bidIdentifier.bidder.uid',
            isEqualTo: contractor.basicProfile.uid)
        .snapshots()
        .map((list) {
      List<TenderBid>? tenderBids =
          list.docs.map((doc) => TenderBid.fromJson(doc.data())).toList();
      allTenderBids = optionOf(tenderBids);
      return tenderBids;
    });
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
          .where('bidIdentifier.workIdentifier.workId', isEqualTo: jobId)
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

  startBidding(String jobId) {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.update(TWFC.jobCollection.doc(jobId), {'acceptingBids': true});
    return commitBatch(batch);
  }

  Future<Either<TWServerError, Unit>> sendInviteToBid({
    required List<Subbie> subbiesToInvite,
    required Job job,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();

    for (final subbie in subbiesToInvite) {
      batch.update(TWFC.jobCollection.doc(job.workIdentifier.workId), {
        'uidOfSubbiesInvitedToBid':
            FieldValue.arrayUnion([subbie.basicProfile.uid])
      });
      // batch.set(
      //   TWFC.subbieCollection
      //       .doc(subbie.uid)
      //       .collection('invites')
      //       .doc("inviteToBidForJobId: ${job.workIdentifier.workId}"),
      //   {
      //     'jobId': job.workIdentifier.workId,
      //     'jobTitle': job.workIdentifier.title,
      //   },
      // );
    }

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

  Stream<List<Supplement>> streamAllSupplements() {
    return TWFC.supplementCollection.snapshots().map((list) {
      List<Supplement>? supplements = list.docs
          .map((supplement) => Supplement.fromJson(supplement.data()))
          .toList();
      allSupplements = optionOf(supplements);
      return allSupplements.getOrElse(() => []);
    });
  }

  // Stream<List<JobFeedback>> streamRatings(String jobId) =>
  //     TWFC.jobReviewCollection.where('jobId', isEqualTo: jobId).snapshots().map(
  //           (list) => list.docs
  //               .map((doc) => JobFeedback.fromJson(doc.data()))
  //               .toList(),
  //         );

  // Stream<List<Job>> streamOldJobs({required TWUser contractor}) => TWFC
  //     .oldJobsCollection
  //     .where('contractorId', isEqualTo: contractor.uid)
  //     .snapshots()
  //     .map((list) => list.docs.map((doc) => Job.fromJson(doc.data())).toList());

  // Future<Stream<List<MarkedUser>>> streamMarkedUsers() async {
  //   return await TWFC.subbieCollection
  //       .doc(CacheService().subbie.basicProfile.uid)
  //       .collection('marked_users')
  //       .snapshots()
  //       .map(
  //     (list) async {
  //       return await list.docs.map(
  //         (doc)  {
  //           Map<String, dynamic> map = doc.data() as Map<String, dynamic>;
  //           print(map['userDocRef']);
  //
  //           DocumentReference reference = map['userDocRef'];
  //
  //           // DocumentSnapshot subbieSnap = await reference.get();
  //           // Subbie subbie =
  //           //     Subbie.fromJson(subbieSnap.data() as Map<String, dynamic>);
  //           return MarkedUser(
  //             user: subbie,
  //             markedAsFavourite: true,
  //           );
  //
  //           // if (subbieSnap.exists) {
  //           //
  //           // }
  //         },
  //       ).toList();
  //     },
  //   );
  //
  //
  // }

  // Stream<List<TWUser>> markedUsers() => TWFC.contractorsCollection
  //         .doc(CacheService().contractor.basicProfile.uid)
  //         .collection('marked_users')
  //         .snapshots()
  //         .map((list) {
  //       List<TWUser> favouriteSubbies =
  //           list.docs.map((doc) => TWUser.fromJson(doc.data())).toList();
  //       return favouriteSubbies;
  //     });

  // addSubbieInBlackList({
  //   required TWUser subbie,
  //   required TWUser contractor,
  // }) {
  //   WriteBatch batch = FirebaseFirestore.instance.batch();
  //   batch.delete(TWFC.contractorsCollection
  //       .doc(contractor.uid)
  //       .collection('favourite_subbies')
  //       .doc('favourite-subbie-id: ${subbie.uid}'));
  //   batch.set(
  //     TWFC.contractorsCollection
  //         .doc(contractor.uid)
  //         .collection('blacklisted_subbies')
  //         .doc('blacklisted-subbie-id: ${subbie.uid}'),
  //     subbie.toJson(),
  //   );
  //   return commitBatch(batch);
  // }

  // Stream<List<TWUser>> blacklistedSubbies({required TWUser contractor}) =>
  //     TWFC.contractorsCollection
  //         .doc(contractor.uid)
  //         .collection('blacklisted_subbies')
  //         .snapshots()
  //         .map((list) =>
  //             list.docs.map((doc) => TWUser.fromJson(doc.data())).toList());
  //

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

  Future<Either<TWServerError, Unit>> onJobComplete({
    //this list of job bids is supposed to have ratings
    required List<JobBidFeedback> jobBidsFeedbacks,
    required Job job,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    for (final feedback in jobBidsFeedbacks) {
      batch.update(
        TWFC.bidsCollection.doc(feedback.bidId),
        {'feedback': feedback.toJson()},
      );
    }
    batch.update(TWFC.jobCollection.doc(job.workIdentifier.workId), {
      'status': JobStatus(JobStatuses.Completed).toJson(),
    });
    await batch.commit();
    return right(unit);
  }

  // removeSubbieFromFavouriteList({
  //   required TWUser subbie,
  //   required TWUser contractor,
  // }) {
  //   WriteBatch batch = FirebaseFirestore.instance.batch();
  //
  //   batch.delete(TWFC.contractorsCollection
  //       .doc(contractor.uid)
  //       .collection('favourite_subbies')
  //       .doc('favourite-subbie-id: ${subbie.uid}'));
  //   return commitBatch(batch);
  // }
  // removeSubbieFromBlackList({
  //   required TWUser subbie,
  //   required TWUser contractor,
  // }) {
  //   WriteBatch batch = FirebaseFirestore.instance.batch();
  //
  //   batch.delete(TWFC.contractorsCollection
  //       .doc(contractor.uid)
  //       .collection('blacklisted_subbies')
  //       .doc('blacklisted-subbie-id: ${subbie.uid}'));
  //   return commitBatch(batch);
  // }
  //

}
