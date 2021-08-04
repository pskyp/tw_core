import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/diplay_name/display_name.dart';
import 'package:tw_core/models/errors.dart';

part 'company_domain.freezed.dart';

class TWCompanyDomain {
  final Either<CompanyDomainFailure, String> value;

  TWCompanyDomain(String input) : value = validateCompanyDomain(input);
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  static Either<CompanyDomainFailure, String> validateCompanyDomain(
    String input,
  ) {
    final RegExp emailRegExp =
        RegExp(r"^[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}$");

    return emailRegExp.hasMatch(input)
        ? right(input)
        : left(CompanyDomainFailure.invalidCompanydomain());
  }
}

@freezed
class CompanyDomainFailure with _$CompanyDomainFailure {
  const factory CompanyDomainFailure.invalidCompanydomain() =
      InvalidCompanydomain;
}
