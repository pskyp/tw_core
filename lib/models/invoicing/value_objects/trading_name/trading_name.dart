import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trading_name.freezed.dart';

class TradingName {
  final Either<TradingNameFailure, String> value;

  TradingName(String input) : value = validator(input);

  bool get isValid => value.isRight();

  static Either<TradingNameFailure, String> validator(String input) {
    return input.length > 3
        ? right(input)
        : left(TradingNameFailure.tooShort(input));
  }
}

@freezed
class TradingNameFailure with _$TradingNameFailure {
  const factory TradingNameFailure.tooShort(String val) = TooShort;
}
