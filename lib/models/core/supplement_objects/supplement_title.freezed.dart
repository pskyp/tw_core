// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supplement_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SupplementTitleFailuresTearOff {
  const _$SupplementTitleFailuresTearOff();

  InvalidEmail shortTitle(String value) {
    return InvalidEmail(
      value,
    );
  }
}

/// @nodoc
const $SupplementTitleFailures = _$SupplementTitleFailuresTearOff();

/// @nodoc
mixin _$SupplementTitleFailures {
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) shortTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? shortTitle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) shortTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? shortTitle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupplementTitleFailuresCopyWith<SupplementTitleFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementTitleFailuresCopyWith<$Res> {
  factory $SupplementTitleFailuresCopyWith(SupplementTitleFailures value,
          $Res Function(SupplementTitleFailures) then) =
      _$SupplementTitleFailuresCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SupplementTitleFailuresCopyWithImpl<$Res>
    implements $SupplementTitleFailuresCopyWith<$Res> {
  _$SupplementTitleFailuresCopyWithImpl(this._value, this._then);

  final SupplementTitleFailures _value;
  // ignore: unused_field
  final $Res Function(SupplementTitleFailures) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res>
    implements $SupplementTitleFailuresCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res>
    extends _$SupplementTitleFailuresCopyWithImpl<$Res>
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
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SupplementTitleFailures.shortTitle(value: $value)';
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
    required TResult Function(String value) shortTitle,
  }) {
    return shortTitle(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? shortTitle,
    required TResult orElse(),
  }) {
    if (shortTitle != null) {
      return shortTitle(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) shortTitle,
  }) {
    return shortTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? shortTitle,
    required TResult orElse(),
  }) {
    if (shortTitle != null) {
      return shortTitle(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements SupplementTitleFailures {
  const factory InvalidEmail(String value) = _$InvalidEmail;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}
