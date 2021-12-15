// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompanyNumberFailureTearOff {
  const _$CompanyNumberFailureTearOff();

  TooShort tooShort(String input) {
    return TooShort(
      input,
    );
  }
}

/// @nodoc
const $CompanyNumberFailure = _$CompanyNumberFailureTearOff();

/// @nodoc
mixin _$CompanyNumberFailure {
  String get input => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? tooShort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TooShort value) tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TooShort value)? tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TooShort value)? tooShort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyNumberFailureCopyWith<CompanyNumberFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyNumberFailureCopyWith<$Res> {
  factory $CompanyNumberFailureCopyWith(CompanyNumberFailure value,
          $Res Function(CompanyNumberFailure) then) =
      _$CompanyNumberFailureCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$CompanyNumberFailureCopyWithImpl<$Res>
    implements $CompanyNumberFailureCopyWith<$Res> {
  _$CompanyNumberFailureCopyWithImpl(this._value, this._then);

  final CompanyNumberFailure _value;
  // ignore: unused_field
  final $Res Function(CompanyNumberFailure) _then;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $TooShortCopyWith<$Res>
    implements $CompanyNumberFailureCopyWith<$Res> {
  factory $TooShortCopyWith(TooShort value, $Res Function(TooShort) then) =
      _$TooShortCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class _$TooShortCopyWithImpl<$Res>
    extends _$CompanyNumberFailureCopyWithImpl<$Res>
    implements $TooShortCopyWith<$Res> {
  _$TooShortCopyWithImpl(TooShort _value, $Res Function(TooShort) _then)
      : super(_value, (v) => _then(v as TooShort));

  @override
  TooShort get _value => super._value as TooShort;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(TooShort(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TooShort implements TooShort {
  const _$TooShort(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'CompanyNumberFailure.tooShort(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TooShort &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $TooShortCopyWith<TooShort> get copyWith =>
      _$TooShortCopyWithImpl<TooShort>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) tooShort,
  }) {
    return tooShort(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? tooShort,
  }) {
    return tooShort?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? tooShort,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TooShort value) tooShort,
  }) {
    return tooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TooShort value)? tooShort,
  }) {
    return tooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TooShort value)? tooShort,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(this);
    }
    return orElse();
  }
}

abstract class TooShort implements CompanyNumberFailure {
  const factory TooShort(String input) = _$TooShort;

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  $TooShortCopyWith<TooShort> get copyWith =>
      throw _privateConstructorUsedError;
}
