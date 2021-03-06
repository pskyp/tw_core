// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InvoiceDescriptionFailureTearOff {
  const _$InvoiceDescriptionFailureTearOff();

  ShortInvoiceDescription shortDescription(String value) {
    return ShortInvoiceDescription(
      value,
    );
  }
}

/// @nodoc
const $InvoiceDescriptionFailure = _$InvoiceDescriptionFailureTearOff();

/// @nodoc
mixin _$InvoiceDescriptionFailure {
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) shortDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? shortDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? shortDescription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortInvoiceDescription value) shortDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShortInvoiceDescription value)? shortDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortInvoiceDescription value)? shortDescription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceDescriptionFailureCopyWith<InvoiceDescriptionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDescriptionFailureCopyWith<$Res> {
  factory $InvoiceDescriptionFailureCopyWith(InvoiceDescriptionFailure value,
          $Res Function(InvoiceDescriptionFailure) then) =
      _$InvoiceDescriptionFailureCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$InvoiceDescriptionFailureCopyWithImpl<$Res>
    implements $InvoiceDescriptionFailureCopyWith<$Res> {
  _$InvoiceDescriptionFailureCopyWithImpl(this._value, this._then);

  final InvoiceDescriptionFailure _value;
  // ignore: unused_field
  final $Res Function(InvoiceDescriptionFailure) _then;

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
abstract class $ShortInvoiceDescriptionCopyWith<$Res>
    implements $InvoiceDescriptionFailureCopyWith<$Res> {
  factory $ShortInvoiceDescriptionCopyWith(ShortInvoiceDescription value,
          $Res Function(ShortInvoiceDescription) then) =
      _$ShortInvoiceDescriptionCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class _$ShortInvoiceDescriptionCopyWithImpl<$Res>
    extends _$InvoiceDescriptionFailureCopyWithImpl<$Res>
    implements $ShortInvoiceDescriptionCopyWith<$Res> {
  _$ShortInvoiceDescriptionCopyWithImpl(ShortInvoiceDescription _value,
      $Res Function(ShortInvoiceDescription) _then)
      : super(_value, (v) => _then(v as ShortInvoiceDescription));

  @override
  ShortInvoiceDescription get _value => super._value as ShortInvoiceDescription;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ShortInvoiceDescription(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortInvoiceDescription implements ShortInvoiceDescription {
  const _$ShortInvoiceDescription(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'InvoiceDescriptionFailure.shortDescription(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortInvoiceDescription &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $ShortInvoiceDescriptionCopyWith<ShortInvoiceDescription> get copyWith =>
      _$ShortInvoiceDescriptionCopyWithImpl<ShortInvoiceDescription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) shortDescription,
  }) {
    return shortDescription(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? shortDescription,
  }) {
    return shortDescription?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? shortDescription,
    required TResult orElse(),
  }) {
    if (shortDescription != null) {
      return shortDescription(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortInvoiceDescription value) shortDescription,
  }) {
    return shortDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShortInvoiceDescription value)? shortDescription,
  }) {
    return shortDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortInvoiceDescription value)? shortDescription,
    required TResult orElse(),
  }) {
    if (shortDescription != null) {
      return shortDescription(this);
    }
    return orElse();
  }
}

abstract class ShortInvoiceDescription implements InvoiceDescriptionFailure {
  const factory ShortInvoiceDescription(String value) =
      _$ShortInvoiceDescription;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  $ShortInvoiceDescriptionCopyWith<ShortInvoiceDescription> get copyWith =>
      throw _privateConstructorUsedError;
}
