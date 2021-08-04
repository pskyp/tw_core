import 'package:dartz/dartz.dart';
import 'package:tw_core/application/profile_completion/bloc/profilecompletion_bloc.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/core/company_domain/company_domain.dart';
import 'package:tw_core/models/core/company_name/company_name.dart';
import 'package:tw_core/models/core/diplay_name/display_name.dart';
import 'package:tw_core/models/core/phone/phone.dart';
import 'package:tw_core/models/email/email.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/profile_completion/profile_completion_failure.dart';

abstract class IUserServiceFacade {
  final String uid;

  IUserServiceFacade({required this.uid});

  Future<bool> profileExists();
  Future<Either<ProfileCompletionFailure, Unit>> createUserProfile({
    required TWDisplayName displayName,
    required TWCompanyName companyName,
    required TWCompanyDomain companyDomain,
    required TWPhone phone,
    required LocationModel location,
  });
  Stream<Contractor?> get streamUser;

  saveJobRequirements(String requirementsAsString);
  activateSubscription();
  cancelSubscription();
}
