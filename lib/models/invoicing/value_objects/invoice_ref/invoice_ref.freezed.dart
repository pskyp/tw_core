// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InvoiceRefFailureTearOff {
  const _$InvoiceRefFailureTearOff();

  InvalidInvoiceRef invalid(String value) {
    return InvalidInvoiceRef(
      value,
    );
  }
}

/// @nodoc
const $InvoiceRefFailure = _$InvoiceRefFailureTearOff();

/// @nodoc
mixin _$InvoiceRefFailure {
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidInvoiceRef value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidInvoiceRef value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceRefFailureCopyWith<InvoiceRefFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceRefFailureCopyWith<$Res> {
  factory $InvoiceRefFailureCopyWith(
          InvoiceRefFailure value, $Res Function(InvoiceRefFailure) then) =
      _$InvoiceRefFailureCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$InvoiceRefFailureCopyWithImpl<$Res>
    implements $InvoiceRefFailureCopyWith<$Res> {
  _$InvoiceRefFailureCopyWithImpl(this._value, this._then);

  final InvoiceRefFailure _value;
  // ignore: unused_field
  final $Res Function(InvoiceRefFailure) _then;

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
abstract class $InvalidInvoiceRefCopyWith<$Res>
    implements $InvoiceRefFailureCopyWith<$Res> {
  factory $InvalidInvoiceRefCopyWith(
          InvalidInvoiceRef value, $Res Function(InvalidInvoiceRef) then) =
      _$InvalidInvoiceRefCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class _$InvalidInvoiceRefCopyWithImpl<$Res>
    extends _$InvoiceRefFailureCopyWithImpl<$Res>
    implements $InvalidInvoiceRefCopyWith<$Res> {
  _$InvalidInvoiceRefCopyWithImpl(
      InvalidInvoiceRef _value, $Res Function(InvalidInvoiceRef) _then)
      : super(_value, (v) => _then(v as InvalidInvoiceRef));

  @override
  InvalidInvoiceRef get _value => super._value as InvalidInvoiceRef;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(InvalidInvoiceRef(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidInvoiceRef implements InvalidInvoiceRef {
  const _$InvalidInvoiceRef(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'InvoiceRefFailure.invalid(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidInvoiceRef &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $InvalidInvoiceRefCopyWith<InvalidInvoiceRef> get copyWith =>
      _$InvalidInvoiceRefCopyWithImpl<InvalidInvoiceRef>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) invalid,
  }) {
    return invalid(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidInvoiceRef value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidInvoiceRef value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class InvalidInvoiceRef implements InvoiceRefFailure {
  const factory InvalidInvoiceRef(String value) = _$InvalidInvoiceRef;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidInvoiceRefCopyWith<InvalidInvoiceRef> get copyWith =>
      throw _privateConstructorUsedError;
}
