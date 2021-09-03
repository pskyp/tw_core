// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SupplementDateValidatorsTearOff {
  const _$SupplementDateValidatorsTearOff();

  StartDateValidation startDateValidation(DateTime date) {
    return StartDateValidation(
      date,
    );
  }

  EndDateValidation endDateValidation(DateTime date) {
    return EndDateValidation(
      date,
    );
  }
}

/// @nodoc
const $SupplementDateValidators = _$SupplementDateValidatorsTearOff();

/// @nodoc
mixin _$SupplementDateValidators {
  DateTime get date => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) startDateValidation,
    required TResult Function(DateTime date) endDateValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? startDateValidation,
    TResult Function(DateTime date)? endDateValidation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDateValidation value) startDateValidation,
    required TResult Function(EndDateValidation value) endDateValidation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDateValidation value)? startDateValidation,
    TResult Function(EndDateValidation value)? endDateValidation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupplementDateValidatorsCopyWith<SupplementDateValidators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementDateValidatorsCopyWith<$Res> {
  factory $SupplementDateValidatorsCopyWith(SupplementDateValidators value,
          $Res Function(SupplementDateValidators) then) =
      _$SupplementDateValidatorsCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$SupplementDateValidatorsCopyWithImpl<$Res>
    implements $SupplementDateValidatorsCopyWith<$Res> {
  _$SupplementDateValidatorsCopyWithImpl(this._value, this._then);

  final SupplementDateValidators _value;
  // ignore: unused_field
  final $Res Function(SupplementDateValidators) _then;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class $StartDateValidationCopyWith<$Res>
    implements $SupplementDateValidatorsCopyWith<$Res> {
  factory $StartDateValidationCopyWith(
          StartDateValidation value, $Res Function(StartDateValidation) then) =
      _$StartDateValidationCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$StartDateValidationCopyWithImpl<$Res>
    extends _$SupplementDateValidatorsCopyWithImpl<$Res>
    implements $StartDateValidationCopyWith<$Res> {
  _$StartDateValidationCopyWithImpl(
      StartDateValidation _value, $Res Function(StartDateValidation) _then)
      : super(_value, (v) => _then(v as StartDateValidation));

  @override
  StartDateValidation get _value => super._value as StartDateValidation;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(StartDateValidation(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$StartDateValidation implements StartDateValidation {
  const _$StartDateValidation(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'SupplementDateValidators.startDateValidation(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartDateValidation &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $StartDateValidationCopyWith<StartDateValidation> get copyWith =>
      _$StartDateValidationCopyWithImpl<StartDateValidation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) startDateValidation,
    required TResult Function(DateTime date) endDateValidation,
  }) {
    return startDateValidation(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? startDateValidation,
    TResult Function(DateTime date)? endDateValidation,
    required TResult orElse(),
  }) {
    if (startDateValidation != null) {
      return startDateValidation(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDateValidation value) startDateValidation,
    required TResult Function(EndDateValidation value) endDateValidation,
  }) {
    return startDateValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDateValidation value)? startDateValidation,
    TResult Function(EndDateValidation value)? endDateValidation,
    required TResult orElse(),
  }) {
    if (startDateValidation != null) {
      return startDateValidation(this);
    }
    return orElse();
  }
}

abstract class StartDateValidation implements SupplementDateValidators {
  const factory StartDateValidation(DateTime date) = _$StartDateValidation;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StartDateValidationCopyWith<StartDateValidation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndDateValidationCopyWith<$Res>
    implements $SupplementDateValidatorsCopyWith<$Res> {
  factory $EndDateValidationCopyWith(
          EndDateValidation value, $Res Function(EndDateValidation) then) =
      _$EndDateValidationCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$EndDateValidationCopyWithImpl<$Res>
    extends _$SupplementDateValidatorsCopyWithImpl<$Res>
    implements $EndDateValidationCopyWith<$Res> {
  _$EndDateValidationCopyWithImpl(
      EndDateValidation _value, $Res Function(EndDateValidation) _then)
      : super(_value, (v) => _then(v as EndDateValidation));

  @override
  EndDateValidation get _value => super._value as EndDateValidation;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(EndDateValidation(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$EndDateValidation implements EndDateValidation {
  const _$EndDateValidation(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'SupplementDateValidators.endDateValidation(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EndDateValidation &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $EndDateValidationCopyWith<EndDateValidation> get copyWith =>
      _$EndDateValidationCopyWithImpl<EndDateValidation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) startDateValidation,
    required TResult Function(DateTime date) endDateValidation,
  }) {
    return endDateValidation(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? startDateValidation,
    TResult Function(DateTime date)? endDateValidation,
    required TResult orElse(),
  }) {
    if (endDateValidation != null) {
      return endDateValidation(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDateValidation value) startDateValidation,
    required TResult Function(EndDateValidation value) endDateValidation,
  }) {
    return endDateValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDateValidation value)? startDateValidation,
    TResult Function(EndDateValidation value)? endDateValidation,
    required TResult orElse(),
  }) {
    if (endDateValidation != null) {
      return endDateValidation(this);
    }
    return orElse();
  }
}

abstract class EndDateValidation implements SupplementDateValidators {
  const factory EndDateValidation(DateTime date) = _$EndDateValidation;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EndDateValidationCopyWith<EndDateValidation> get copyWith =>
      throw _privateConstructorUsedError;
}
