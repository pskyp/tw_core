part of 'taj_facade.dart';

class TAJSubbie extends TAJFacade {
  // static Option<List<BidReview>> allBidReviews = optionOf(null);
  static Option<List<JobBid>> allBids = optionOf(null);
  static Option<List<Job>> allJobs = optionOf(null);
  static Option<List<InviteToBid>> allInvites = optionOf(null);

  Stream<List<Job>> streamAllJobs(TWUser subbie) =>
      TWFC.jobCollection.snapshots().map((list) {
        allJobs =
            optionOf(list.docs.map((doc) => Job.fromJson(doc.data())).toList());
        return allJobs.getOrElse(() => []);
      });

  Future<Either<TWServerError, Unit>> acceptJobOffer({
    required Job job,
    required JobBid jobBid,
    required Subbie subbie,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.bidsCollection.doc(jobBid.bidIdentifier.bidId),
      jobBid.copyWith(jobBidStatus: JobBidStatuses.Hired).toJson(),
    );
    batch.update(TWFC.jobCollection.doc(job.workIdentifier.workId), {
      'subbiesWorking': FieldValue.increment(1),
    });
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
      JobBid jobBid = JobBid.neu(
        subbie: subbie,
        job: job,
      );

      var batch = FirebaseFirestore.instance.batch();
      batch.set(
        TWFC.bidsCollection.doc(jobBid.bidIdentifier.bidId),
        jobBid.toJson(),
      );
      batch.update(TWFC.jobCollection.doc(job.workIdentifier.workId), {
        'totalUnseenBids': FieldValue.increment(1),
      });
      batch.update(TWFC.jobCollection.doc(job.workIdentifier.workId), {
        'applications': FieldValue.increment(1),
      });

      batch.delete(TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('invites')
          .doc("inviteToBidForJobId: ${job.workIdentifier.workId}"));

      await batch.commit();
      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }

  Future<Either<TWServerError, Unit>> saveInvoicingDetails({
    required VATNumber vatNumber,
    required TradingName tradingName,
    required TWLocation registeredAddress,
    required TWLocation invoicingAddress,
    required CompanyNumber companyNumber,
  }) async {
    SubbieInvoicingDetails invoicingDetails = SubbieInvoicingDetails(
      vatNumber: vatNumber.getOrCrash(),
      tradingName: tradingName.getOrCrash(),
      companyNumber: companyNumber.getOrCrash(),
      registeredAddress: registeredAddress.getOrCrash(),
      invoicingAddress: invoicingAddress.getOrCrash(),
    );
    var batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.subbieCollection.doc(CacheService().subbie.basicProfile.uid),
      {
        'invoicingDetails': invoicingDetails.toJson(),
      },
    );
    await batch.commit();
    return right(unit);
  }

  Future<Either<TWServerError, Unit>> jobFeedbackSubmit({
    required JobFeedback jobFeedback,
  }) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.jobCollection.doc(jobFeedback.jobId),
      {
        'feedback': FieldValue.arrayUnion([jobFeedback.toJson()]),
      },
    );
    //update total_ratings, and other attributes in contractor doc
    // batch.update(TWFC.contractorsCollection.doc(jobReview.contractorId), {
    //   'totalRatings': FieldValue.increment(1),
    //   'totalReliability': FieldValue.increment(jobReview.rating.reliability),
    //   'totalEnvironment': FieldValue.increment(jobReview.rating.environment),
    //   'totalCommunication': FieldValue.increment(jobReview.rating.communication)
    // });
    print('commitintg batch');
    await batch.commit();
    return right(unit);
  }

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

  Stream<List<JobBid>> streamAllBidsBySubbie({required TWUser subbie}) {
    assert(subbie.type == TWUserType.Subbie);
    return TWFC.bidsCollection
        .where('bidIdentifier.bidder.uid', isEqualTo: subbie.uid)
        .snapshots()
        .map((list) {
      allBids = optionOf(
          list.docs.map((doc) => JobBid.fromJson(doc.data())).toList());
      return allBids.getOrElse(() => []);
    });
  }

  Future<Either<TWServerError, Unit>> uploadReceiptPhotos({
    required List<ReceiptPhoto> receiptPhotos,
  }) async {
    try {
      var receiptPhotosRef =
          FirebaseStorage.instance.ref().child('receiptPhotos/');
      receiptPhotos.forEach((receiptPhoto) async {
        var path = await receiptPhotosRef
            .child(receiptPhoto.id)
            .putFile(File(receiptPhoto.file.path));
        String documentDownloadURL = await path.ref.getDownloadURL();
      });

      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }

  Stream<List<Invoice>> streamInvoiceBySubbieForJob({required String jobId}) {
    return TWFC.invoicesCollection
        .where('subbieTWUser.uid',
            isEqualTo: CacheService().subbie.basicProfile.uid)
        .where('jobID', isEqualTo: jobId)
        .snapshots()
        .map((list) {
      Option<List<Invoice>> invoicesOption = optionOf(
          list.docs.map((doc) => Invoice.fromJson(doc.data())).toList());
      return invoicesOption.getOrElse(() => []);
    });
  }

  activateSubscription(Subbie subbie) => TWFC.subbieCollection
      .doc(subbie.basicProfile.uid)
      .update({'subscribed': true});

  cancelSubscription(Subbie subbie) => TWFC.subbieCollection
      .doc(subbie.basicProfile.uid)
      .update({'subscribed': false});

  Stream<JobBid> streamBid({required Subbie subbie, required Job job}) {
    return TWFC.bidsCollection
        .where('bidIdentifier.workIdentifier.workId',
            isEqualTo: job.workIdentifier.workId)
        .where('bidIdentifier.bidder.uid', isEqualTo: subbie.basicProfile.uid)
        .snapshots()
        .map((event) => JobBid.fromJson(event.docs.first.data()));
  }

  // Stream<List<BidReview>> subbieReviews(Subbie subbie) =>
  //     TWFC.bidReviewsCollection
  //         .where('subbieId', isEqualTo: subbie.basicProfile.uid)
  //         .snapshots()
  //         .map((list) {
  //       allBidReviews = optionOf(
  //           list.docs.map((doc) => BidReview.fromJson(doc.data())).toList());
  //       return allBidReviews.getOrElse(() => []);
  //     });

  Stream<List<InviteToBid>> streamInvitesForSubbie(Subbie subbie) =>
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('invites')
          .snapshots()
          .map((list) {
        allInvites = optionOf(
            list.docs.map((doc) => InviteToBid.fromMap(doc.data())).toList());
        return allInvites.getOrElse(() => []);
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
