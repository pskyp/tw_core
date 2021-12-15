import 'package:dartz/dartz.dart';

class ValidatedObject<InvalidValueType, ValidValueType> {
  final Either<InvalidValueType, ValidValueType> value;

  ValidatedObject(this.value);

  bool get isValid => value.isRight();
  bool get isNotValid => value.isLeft();

  ValidValueType get getOrCrash => value.fold((l) => throw Error(), id);
}
