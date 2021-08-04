import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tw_core/models/auth/i_auth_facade.dart';
import 'package:tw_core/models/password/password.dart';
import 'package:tw_core/models/email/email.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  FirebaseAuthFacade({
    required this.firebaseAuth,
    required this.googleSignIn,
  });

  @override
  Future<Either<AuthFailure, Unit>> signinWithCredentials({
    required EmailAddress email,
    required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(AuthFailure.invalidCredentials());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signupWithCredentials({
    required EmailAddress email,
    required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(AuthFailure.emaillAlreadyInUse());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signinWithGoogle() async {
    final googlUser = await googleSignIn.signIn();
    if (googlUser == null) return left(AuthFailure.cancelledByUser());
    final googleAuthentication = await googlUser.authentication;
    // GoogleAuthProvider.get
    return left(AuthFailure.cancelledByUser());
  }
}
