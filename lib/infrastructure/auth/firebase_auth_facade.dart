import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:tw_core/models/auth/i_auth_facade.dart';
import 'package:tw_core/models/email/email.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  FirebaseAuthFacade({required this.firebaseAuth, required this.googleSignIn});

  @override
  Future<Either<AuthFailure, Unit>> sendSignInLinkToEmail({
    required EmailAddress email,
    required String androidPackageName,
    required String iOSBundleId,
  }) async {
    try {
      await FirebaseAuth.instance.sendSignInLinkToEmail(
        email: email.getOrCrash(),
        actionCodeSettings: ActionCodeSettings(
          url: 'https://tradeworksubbies.page.link',
          androidPackageName: androidPackageName,
          iOSBundleId: iOSBundleId,
          handleCodeInApp: true,
          androidInstallApp: true,
          androidMinimumVersion: "21",
        ),
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    print("sign in start");
    // GoogleAuthProvider authProvider = GoogleAuthProvider();
    print("below authProvider");

    try {
      print("inside try");
      var googleUser = await googleSignIn.signIn();
      if (googleUser != null) {
        final googleAuthentication = await googleUser.authentication;
        final authCredential = GoogleAuthProvider.credential(
          accessToken: googleAuthentication.accessToken,
          idToken: googleAuthentication.idToken,
        );
        await firebaseAuth.signInWithCredential(authCredential);
        return right(unit);
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      print("failed");
      return left(const AuthFailure.serverError());
    }

    // try {
    //
    //   print("\n googleUser ${googleUser}");
    //   if (googleUser == null) {
    //     return left(const AuthFailure.cancelledByUser());
    //   }
    //   print('\n1\n');
    //   final googleAuthentication = await googleUser.authentication;
    //   print('2\n');
    //
    //   final authCredential = GoogleAuthProvider.credential(
    //     accessToken: googleAuthentication.accessToken,
    //     idToken: googleAuthentication.idToken,
    //   );
    //   print('3\n');
    //
    //   await firebaseAuth.signInWithCredential(authCredential);
    //   print('4\n');
    //   return right(unit);
    // } on PlatformException catch (_) {
    //   print('in side catch failure');
    //   return left(const AuthFailure.serverError());
    // }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
