import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/developer/developer.dart';
import 'package:tw_core/models/subbie/subbie_model.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

Future<String> getUserDetails(
    {required String uid, required TWUserType type}) async {
  switch (type) {
    case TWUserType.Developer:
      print('doing a contractor public key lookup');
      var snap = await TWFC.developerCollection.doc(uid).get();
      if (snap.exists) {
        var data = Developer.fromJson(snap.data()!);
        TWUser user = TWUser.fromJson(data.twUser.toJson());
        return user.publicKey!;
      }
      break;
    case TWUserType.Contractor:
      print('doing a contractor public key lookup');
      var snap = await TWFC.contractorsCollection.doc(uid).get();
      if (snap.exists) {
        var data = Contractor.fromJson(snap.data()!);
        TWUser user = TWUser.fromJson(data.basicProfile.toJson());
        return user.publicKey!;
      }
      break;

    case TWUserType.Subbie:
      var snap = await TWFC.subbieCollection.doc(uid).get();

      if (snap.exists) {
        print('subbie public key lookup');
        var data = Subbie.fromJson(snap.data()!);
        TWUser user = TWUser.fromJson(data.basicProfile.toJson());
        return user.publicKey!;
      } else {
        var snap = await TWFC.developerCollection.doc(uid).get();
        if (snap.exists) {
          print('subbie public key lookup');
          var data = Developer.fromJson(snap.data()!);
          TWUser user = TWUser.fromJson(data.twUser.toJson());
          return user.publicKey!;
        }
        break;
      }
  }
  print('error getting looking Public Key ');
  return 'error getting looking Public Key';

// var snap = await TWFC.contractorsCollection.doc(uid).get();
//   print('contractor public key lookup');

//   var data = Contractor.fromJson(snap.data()!);
//   TWUser user = TWUser.fromJson(data.basicProfile.toJson());
//   if (user.publicKey != null) {
//     print('user is a contractor');
//     return user.publicKey!;
//   } else {
//     var snap = await TWFC.subbieCollection.doc(uid).get();
//     print('subbie public key lookup');
//     var data = Subbie.fromJson(snap.data()!);
//     TWUser user = TWUser.fromJson(data.basicProfile.toJson());
//     if (user.publicKey != null) {
//       return user.publicKey!;
//     } else {
//       var snap = await TWFC.usersCollection.doc(uid).get();
//       print('user public key lookup');
//       var data = Subbie.fromJson(snap.data()!);
//       TWUser user = TWUser.fromJson(data.basicProfile.toJson());
//       if (user.publicKey != null) {
//         return user.publicKey!;
//       }
//       return 'error getting Public Code';
//     }

  // return Person(
  //   uid: contractorData.basicProfile.uid,
  //   displayName: contractorData.basicProfile.displayName,
  //   profileImage: contractorData.basicProfile.profileImage,
  // );
}