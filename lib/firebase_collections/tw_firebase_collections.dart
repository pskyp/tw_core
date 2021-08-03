import 'package:cloud_firestore/cloud_firestore.dart';

class TWFC {
  static final developerCollection =
      FirebaseFirestore.instance.collection('developer');
  static final contractorsCollection =
      FirebaseFirestore.instance.collection('contractor');
  static final subbieCollection =
      FirebaseFirestore.instance.collection('subbie');
  static final tendersCollection =
      FirebaseFirestore.instance.collection('tenders');
  static final tenderBidsCollection =
      FirebaseFirestore.instance.collection('tenderBids');
  static final developmentsCollection =
      FirebaseFirestore.instance.collection('developments');

  static final bidsCollection = FirebaseFirestore.instance.collection('bids');

  static final chatsCollection = FirebaseFirestore.instance.collection('chat');

  static final jobCollection = FirebaseFirestore.instance.collection('jobs');

  static final bidReviewsCollection =
      FirebaseFirestore.instance.collection('bidReviews');

  static final oldJobsCollection =
      FirebaseFirestore.instance.collection('oldJobs');

  static final jobReviewCollection =
      FirebaseFirestore.instance.collection('jobReviews');
}
