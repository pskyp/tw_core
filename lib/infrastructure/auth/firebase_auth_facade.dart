import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:tw_core/models/auth/i_auth_facade.dart';
import 'package:tw_core/models/email/email.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth firebaseAuth;
  FirebaseAuthFacade({required this.firebaseAuth});

  @override
  Future<Either<AuthFailure, Unit>> sendSignInLinkToEmail({
    required EmailAddress email,
    required String androidPackageName,
  }) async {
    try {
      await FirebaseAuth.instance.sendSignInLinkToEmail(
        email: email.getOrCrash(),
        actionCodeSettings: ActionCodeSettings(
          url: 'https://tradeworksubbies.page.link',
          androidPackageName: androidPackageName,
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

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
