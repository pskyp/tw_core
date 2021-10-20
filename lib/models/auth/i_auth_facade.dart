import 'package:dartz/dartz.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:tw_core/models/email/email.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> sendSignInLinkToEmail({
    required EmailAddress email,
    required String androidPackageName,
    required String iOSBundleId,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
