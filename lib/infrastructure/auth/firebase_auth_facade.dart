import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:tw_core/models/auth/i_auth_facade.dart';
import 'package:tw_core/models/email/email.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  FirebaseAuthFacade({
    required this.firebaseAuth,
    required this.googleSignIn,
  });

  @override
  Future<Either<AuthFailure, Unit>> sendSignInLinkToEmail({
    required EmailAddress email,
  }) async {
    try {
      await FirebaseAuth.instance.sendSignInLinkToEmail(
        email: email.getOrCrash(),
        actionCodeSettings: ActionCodeSettings(
            url: 'https://tradeworksubbies.page.link',
            androidPackageName: 'uk.tradework.tradeworkcontractors',
            handleCodeInApp: true,
            androidInstallApp: true,
            androidMinimumVersion: "21"),
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
