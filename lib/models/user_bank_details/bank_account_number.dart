import 'package:dartz/dartz.dart';
import 'package:tw_core/models/core/validated_object.dart';

class BankAccountNumber extends ValidatedObject<String, int> {
  BankAccountNumber(String input) : super(validate(input));

  static Either<String, int> validate(String input) {
    int? inputAsNumber = int.tryParse(input);
    if (inputAsNumber != null)
      return right(inputAsNumber);
    else
      return left(input);
  }
}
