import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:tw_core/models/errors.dart';

class TWDate {
  final Either<TWDateFailure, DateTime> value;
  TWDate(this.value);

  getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  get isValid => value.isRight();

  String get asString => value.fold(
        (l) => DateFormat('yyyy-MM-dd').format(l.date),
        (r) => DateFormat('yyyy-MM-dd').format(r),
      );
}

class TWDateFailure {
  final DateTime date;

  TWDateFailure(this.date);
}
