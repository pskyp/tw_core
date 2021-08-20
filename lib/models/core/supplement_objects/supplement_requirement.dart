import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'supplement_requirement.freezed.dart';

class SupplementRequirement extends Equatable {
  final Either<SupplementRequirementFailures, String> value;

  const SupplementRequirement._(this.value);

  factory SupplementRequirement(String input) {
    return SupplementRequirement._(validate(input));
  }

  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  static Either<SupplementRequirementFailures, String> validate(
      final String input) {
    return input.length > 3
        ? right(input)
        : left(SupplementRequirementFailures.shortTitle(input));
  }

  @override
  List<Object> get props => [value];
}

@freezed
class SupplementRequirementFailures with _$SupplementRequirementFailures {
  const factory SupplementRequirementFailures.shortTitle(String value) =
      InvalidEmail;
}
