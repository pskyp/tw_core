// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompanyNameFailureTearOff {
  const _$CompanyNameFailureTearOff();

  ShortCompanyName shortCompanyName(String input) {
    return ShortCompanyName(
      input,
    );
  }
}

/// @nodoc
const $CompanyNameFailure = _$CompanyNameFailureTearOff();

/// @nodoc
mixin _$CompanyNameFailure {
  String get input => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) shortCompanyName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? shortCompanyName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? shortCompanyName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortCompanyName value) shortCompanyName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShortCompanyName value)? shortCompanyName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortCompanyName value)? shortCompanyName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyNameFailureCopyWith<CompanyNameFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyNameFailureCopyWith<$Res> {
  factory $CompanyNameFailureCopyWith(
          CompanyNameFailure value, $Res Function(CompanyNameFailure) then) =
      _$CompanyNameFailureCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$CompanyNameFailureCopyWithImpl<$Res>
    implements $CompanyNameFailureCopyWith<$Res> {
  _$CompanyNameFailureCopyWithImpl(this._value, this._then);

  final CompanyNameFailure _value;
  // ignore: unused_field
  final $Res Function(CompanyNameFailure) _then;

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
abstract class $ShortCompanyNameCopyWith<$Res>
    implements $CompanyNameFailureCopyWith<$Res> {
  factory $ShortCompanyNameCopyWith(
          ShortCompanyName value, $Res Function(ShortCompanyName) then) =
      _$ShortCompanyNameCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class _$ShortCompanyNameCopyWithImpl<$Res>
    extends _$CompanyNameFailureCopyWithImpl<$Res>
    implements $ShortCompanyNameCopyWith<$Res> {
  _$ShortCompanyNameCopyWithImpl(
      ShortCompanyName _value, $Res Function(ShortCompanyName) _then)
      : super(_value, (v) => _then(v as ShortCompanyName));

  @override
  ShortCompanyName get _value => super._value as ShortCompanyName;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(ShortCompanyName(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortCompanyName implements ShortCompanyName {
  const _$ShortCompanyName(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'CompanyNameFailure.shortCompanyName(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortCompanyName &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $ShortCompanyNameCopyWith<ShortCompanyName> get copyWith =>
      _$ShortCompanyNameCopyWithImpl<ShortCompanyName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) shortCompanyName,
  }) {
    return shortCompanyName(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? shortCompanyName,
  }) {
    return shortCompanyName?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? shortCompanyName,
    required TResult orElse(),
  }) {
    if (shortCompanyName != null) {
      return shortCompanyName(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortCompanyName value) shortCompanyName,
  }) {
    return shortCompanyName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShortCompanyName value)? shortCompanyName,
  }) {
    return shortCompanyName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortCompanyName value)? shortCompanyName,
    required TResult orElse(),
  }) {
    if (shortCompanyName != null) {
      return shortCompanyName(this);
    }
    return orElse();
  }
}

abstract class ShortCompanyName implements CompanyNameFailure {
  const factory ShortCompanyName(String input) = _$ShortCompanyName;

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  $ShortCompanyNameCopyWith<ShortCompanyName> get copyWith =>
      throw _privateConstructorUsedError;
}
