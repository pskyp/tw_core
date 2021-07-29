import 'package:dartz/dartz.dart';
import 'package:tw_core/application/profile_completion/bloc/profilecompletion_bloc.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/core/company_name/company_name.dart';
import 'package:tw_core/models/core/diplay_name/display_name.dart';
import 'package:tw_core/models/core/phone/phone.dart';
import 'package:tw_core/models/email/email.dart';
import 'package:tw_core/models/location/location_model.dart';

abstract class IUserServiceFacade {
  final String uid;

  IUserServiceFacade({required this.uid});

  Future<bool> profileExists();
  Future<Either<ProfilecompletionFailure, Unit>> createUserProfile({
    required TWDisplayName displayName,
    required TWCompanyName company,
    required TWPhone phone,
    required LocationModel location,
  });
  Stream<Contractor?> get streamUser;

  saveJobRequirements(String requirementsAsString);
  activateSubscription();
  cancelSubscription();
}
