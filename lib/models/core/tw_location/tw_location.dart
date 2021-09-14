import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/location/location_model.dart';

part 'tw_location.freezed.dart';

class TWLocation {
  final Either<TWLocationFailure, LocationModel> value;
  TWLocation(LocationModel? input)
      : value =
            input != null ? right(input) : left(TWLocationFailure.invalid());

  bool get isValid => value.isRight();
  LocationModel getOrCrash() =>
      value.fold((l) => throw UnexpectedValueError(), id);
}

@freezed
class TWLocationFailure with _$TWLocationFailure {
  const factory TWLocationFailure.invalid() = Invalid;
}
