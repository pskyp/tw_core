import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:tw_core/models/errors.dart';

class TWDate<T extends TWDateFailure> {
  final Either<T, DateTime> value;
  TWDate(this.value);

  getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  get isValid => value.isRight();

  String get asString => value.fold(
        (l) => DateFormat('yyyy-MM-dd').format(l.date),
        (r) => DateFormat('yyyy-MM-dd').format(r),
      );

  DateTime get getDate => value.fold((l) => l.date, id);
}

class TWDateFailure {
  final DateTime date;
  TWDateFailure(this.date);
}
