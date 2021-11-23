import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/subbie/subbie_model.dart';

class MarkedUser {
  final Subbie user;
  final bool markedAsFavourite;

  MarkedUser({
    required this.user,
    required this.markedAsFavourite,
  });

  Map<String, dynamic> toJson() => {
        'userDocRef': TWFC.subbieCollection.doc(user.basicProfile.uid),
        'markedAsFavourite': markedAsFavourite,
      };

  // Map<String, dynamic>

}

class MarkedContractor {
  final Contractor user;
  final bool markedAsFavourite;

  MarkedContractor({
    required this.user,
    required this.markedAsFavourite,
  });

  Map<String, dynamic> toJson() => {
        'userDocRef': TWFC.contractorsCollection.doc(user.basicProfile.uid),
        'markedAsFavourite': markedAsFavourite,
      };

// Map<String, dynamic>

}
