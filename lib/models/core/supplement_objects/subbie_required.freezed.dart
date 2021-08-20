// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subbie_required.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NumberOfSubbiesFailuresTearOff {
  const _$NumberOfSubbiesFailuresTearOff();

  InvalidEmail notEnoughSubbies(int value) {
    return InvalidEmail(
      value,
    );
  }
}

/// @nodoc
const $NumberOfSubbiesFailures = _$NumberOfSubbiesFailuresTearOff();

/// @nodoc
mixin _$NumberOfSubbiesFailures {
  int get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) notEnoughSubbies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? notEnoughSubbies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) notEnoughSubbies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? notEnoughSubbies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberOfSubbiesFailuresCopyWith<NumberOfSubbiesFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberOfSubbiesFailuresCopyWith<$Res> {
  factory $NumberOfSubbiesFailuresCopyWith(NumberOfSubbiesFailures value,
          $Res Function(NumberOfSubbiesFailures) then) =
      _$NumberOfSubbiesFailuresCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$NumberOfSubbiesFailuresCopyWithImpl<$Res>
    implements $NumberOfSubbiesFailuresCopyWith<$Res> {
  _$NumberOfSubbiesFailuresCopyWithImpl(this._value, this._then);

  final NumberOfSubbiesFailures _value;
  // ignore: unused_field
  final $Res Function(NumberOfSubbiesFailures) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res>
    implements $NumberOfSubbiesFailuresCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res>
    extends _$NumberOfSubbiesFailuresCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(InvalidEmail(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'NumberOfSubbiesFailures.notEnoughSubbies(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<InvalidEmail> get copyWith =>
      _$InvalidEmailCopyWithImpl<InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) notEnoughSubbies,
  }) {
    return notEnoughSubbies(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? notEnoughSubbies,
    required TResult orElse(),
  }) {
    if (notEnoughSubbies != null) {
      return notEnoughSubbies(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) notEnoughSubbies,
  }) {
    return notEnoughSubbies(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? notEnoughSubbies,
    required TResult orElse(),
  }) {
    if (notEnoughSubbies != null) {
      return notEnoughSubbies(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements NumberOfSubbiesFailures {
  const factory InvalidEmail(int value) = _$InvalidEmail;

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}
