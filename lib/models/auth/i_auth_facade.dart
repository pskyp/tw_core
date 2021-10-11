import 'package:dartz/dartz.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:tw_core/models/email/email.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> sendSignInLinkToEmail({
    required EmailAddress email,
  });
  Future<void> signOut();
}
