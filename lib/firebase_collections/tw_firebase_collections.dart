import 'package:cloud_firestore/cloud_firestore.dart';

class TWFC {
  static final developerCollection =
      FirebaseFirestore.instance.collection('developer');
  static final contractorsCollection =
      FirebaseFirestore.instance.collection('contractor');
  static final tendersCollection =
      FirebaseFirestore.instance.collection('tenders');
  static final developmentsCollection =
      FirebaseFirestore.instance.collection('developments');
}