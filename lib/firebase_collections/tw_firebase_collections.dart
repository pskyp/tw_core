import 'package:cloud_firestore/cloud_firestore.dart';

class TWFC {
  static final developerCollection =
      FirebaseFirestore.instance.collection('developer');
  static final twNotificationsCollection =
      FirebaseFirestore.instance.collection('twNotifications');
  static final invoicesCollection =
      FirebaseFirestore.instance.collection('invoices');
  static final contractorsCollection =
      FirebaseFirestore.instance.collection('contractor');
  static final subbieCollection =
      FirebaseFirestore.instance.collection('users');
  static final usersCollection = FirebaseFirestore.instance.collection('users');
  static final docsCollection = FirebaseFirestore.instance.collection('docs');
  static final tendersCollection =
      FirebaseFirestore.instance.collection('tenders');
  static final tenderBidsCollection =
      FirebaseFirestore.instance.collection('tenderBids');
  static final developmentsCollection =
      FirebaseFirestore.instance.collection('developments');
  static final bidsCollection = FirebaseFirestore.instance.collection('bids');
  static final mailsCollection = FirebaseFirestore.instance.collection('mail');
  static final chatsCollection = FirebaseFirestore.instance.collection('chat');
  static final jobCollection = FirebaseFirestore.instance.collection('jobs');
  static final supplementCollection =
      FirebaseFirestore.instance.collection('supplements');
  static final bidReviewsCollection =
      FirebaseFirestore.instance.collection('bidReviews');
  static final jobReviewCollection =
      FirebaseFirestore.instance.collection('jobReviews');
  static final pendingJobReviewsCollection =
      FirebaseFirestore.instance.collection('pendingobReviews');
}
