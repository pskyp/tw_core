import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tw_core/models/auth/i_auth_facade.dart';
import 'package:tw_core/models/password/password.dart';
import 'package:tw_core/models/email/email.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  FirebaseAuthFacade(this._firebaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> signinWithCredentials({
    required EmailAddress email,
    required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'user-not-found') {
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
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(AuthFailure.invalidCredentials());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signinWithGoogle() async {
    return left(AuthFailure.serverError());
  }
}
