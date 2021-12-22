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

  Future<Either<TWServerError, Unit>> saveSoleTraderDetails({
    required TWString individualName,
    required String? businessName,
    required TWLocation correspondenceAddress,
  }) async {
    final SoleTraderDetails soleTraderDetails = SoleTraderDetails(
      individualName: individualName.getOrCrash(),
      businessName: businessName,
      correspondenceAddress: correspondenceAddress.getOrCrash(),
    );
    var batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.usersCollection.doc(CacheService().subbie.basicProfile.uid),
      {
        'soleTraderDetailsOption': soleTraderDetails.toJson(),
      },
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

  Future<Either<TWServerError, Unit>> skipFeedback(JobBid jobBid) async {
    await TWFC.bidsCollection.doc(jobBid.bidIdentifier.bidId).update({
      'feedbackSkipped': true,
    });

    return right(unit);
  }

  Stream<KtList<JobBid>> streamBidsOfPendingJobRatings() {
    return TWFC.bidsCollection
        .where('bidIdentifier.bidder.uid',
            isEqualTo: CacheService().subbie.basicProfile.uid)
        .where('feedback', isNull: false)
        .where('feedbackProvidedToContractor', isEqualTo: false)
        .where('feedbackSkipped', isEqualTo: false)
        .snapshots()
        .map(
          (event) => KtList.from(
            event.docs.map(
              (e) => JobBid.fromJson(e.data()),
            ),
          ),
        );

    // List<JobBid> bidsOfPendingJobRatings = [];
    //
    // QuerySnapshot snapshot = await TWFC.subbieCollection
    //     .doc(CacheService().subbie.basicProfile.uid)
    //     .collection('bidIdOfPendingJobRatings')
    //     .get();
    //
    // print(snapshot.docs.length);
    //
    // for (final doc in snapshot.docs) {
    //   Map<String, dynamic> map = doc.data() as Map<String, dynamic>;
    //   print(map['bidDocRef']);
    //
    //   DocumentReference reference = map['bidDocRef'];
    //
    //   DocumentSnapshot docSnap = await reference.get();
    //   if (docSnap.exists) {
    //     bidsOfPendingJobRatings
    //         .add(JobBid.fromJson(docSnap.data() as Map<String, dynamic>));
    //   }
    // }
    //
    // return KtList.from(bidsOfPendingJobRatings);
  }

  Future<Either<TWServerError, Unit>> saveBankDetails({
    required BankAccountNumber accountNumber,
    required BankSortCode sortCode,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    final userBankDetails = UserBankDetails(
      accountNumber: accountNumber.getOrCrash,
      sortCode: sortCode.getOrCrash,
    );
    batch.update(
      TWFC.subbieCollection.doc(CacheService().subbie.basicProfile.uid),
      {'userBankDetails': userBankDetails.toJson()},
    );
    return await commitBatch(batch);
  }

  Future<Either<TWServerError, Unit>> toggleSubscription() async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    Subbie subbie = CacheService().subbie;
    batch.update(
      TWFC.subbieCollection.doc(subbie.basicProfile.uid),
      {
        'subscribed': subbie.subscribed ? false : true,
      },
    );

    await batch.commit();
    return right(unit);
  }

  Future<Either<TWServerError, Unit>> saveLimitedCompanyDetails({
    required VATNumber vatNumber,
    required TradingName tradingName,
    required TWLocation registeredAddress,
    required TWLocation invoicingAddress,
    required CompanyNumber companyNumber,
  }) async {
    final LimitedCompanyDetails limitedCompanyDetails = LimitedCompanyDetails(
      vatNumber: vatNumber.getOrCrash(),
      companyName: tradingName.getOrCrash(),
      companyNumber: companyNumber.getOrCrash(),
      companyRegisteredAddress: registeredAddress.getOrCrash(),
      invoiceAddress: invoicingAddress.getOrCrash(),
    );
    var batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.usersCollection.doc(CacheService().subbie.basicProfile.uid),
      {
        'limitedCompanyDetailsOption': limitedCompanyDetails.toJson(),
      },
    );
    await batch.commit();
    return right(unit);
  }

  Future<Either<TWServerError, Unit>> jobFeedbackSubmit({
    required JobFeedback jobFeedback,
    required String bidId,
  }) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.jobCollection.doc(jobFeedback.jobId),
      {
        'feedback': FieldValue.arrayUnion([jobFeedback.toJson()]),
      },
    );
    batch.update(
      TWFC.bidsCollection.doc(bidId),
      {
        'feedbackProvidedToContractor': true,
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
        .where('bidIdentifier.bidder.uid',
            isEqualTo: CacheService().subbie.basicProfile.uid)
        .where('bidIdentifier.workIdentifier.workId', isEqualTo: jobId)
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
