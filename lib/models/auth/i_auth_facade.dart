import 'package:dartz/dartz.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:tw_core/models/email/email.dart';
import 'package:tw_core/models/password/password.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signupWithCredentials({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signinWithCredentials({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signinWithGoogle();
}
