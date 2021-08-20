import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'supplement_title.freezed.dart';

class SupplementTitle extends Equatable {
  final Either<SupplementTitleFailures, String> value;

  const SupplementTitle._(this.value);

  factory SupplementTitle(String input) {
    return SupplementTitle._(validate(input));
  }
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  static Either<SupplementTitleFailures, String> validate(final String input) {
    return input.length > 3
        ? right(input)
        : left(SupplementTitleFailures.shortTitle(input));
  }

  @override
  List<Object> get props => [value];
}

@freezed
class SupplementTitleFailures with _$SupplementTitleFailures {
  const factory SupplementTitleFailures.shortTitle(String value) = InvalidEmail;
}
