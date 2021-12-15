// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_facade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatFacadeFailureTearOff {
  const _$ChatFacadeFailureTearOff();

  IllegalSender illegalSender() {
    return const IllegalSender();
  }
}

/// @nodoc
const $ChatFacadeFailure = _$ChatFacadeFailureTearOff();

/// @nodoc
mixin _$ChatFacadeFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() illegalSender,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? illegalSender,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? illegalSender,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IllegalSender value) illegalSender,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IllegalSender value)? illegalSender,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IllegalSender value)? illegalSender,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatFacadeFailureCopyWith<$Res> {
  factory $ChatFacadeFailureCopyWith(
          ChatFacadeFailure value, $Res Function(ChatFacadeFailure) then) =
      _$ChatFacadeFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatFacadeFailureCopyWithImpl<$Res>
    implements $ChatFacadeFailureCopyWith<$Res> {
  _$ChatFacadeFailureCopyWithImpl(this._value, this._then);

  final ChatFacadeFailure _value;
  // ignore: unused_field
  final $Res Function(ChatFacadeFailure) _then;
}

/// @nodoc
abstract class $IllegalSenderCopyWith<$Res> {
  factory $IllegalSenderCopyWith(
          IllegalSender value, $Res Function(IllegalSender) then) =
      _$IllegalSenderCopyWithImpl<$Res>;
}

/// @nodoc
class _$IllegalSenderCopyWithImpl<$Res>
    extends _$ChatFacadeFailureCopyWithImpl<$Res>
    implements $IllegalSenderCopyWith<$Res> {
  _$IllegalSenderCopyWithImpl(
      IllegalSender _value, $Res Function(IllegalSender) _then)
      : super(_value, (v) => _then(v as IllegalSender));

  @override
  IllegalSender get _value => super._value as IllegalSender;
}

/// @nodoc

class _$IllegalSender implements IllegalSender {
  const _$IllegalSender();

  @override
  String toString() {
    return 'ChatFacadeFailure.illegalSender()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IllegalSender);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() illegalSender,
  }) {
    return illegalSender();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? illegalSender,
  }) {
    return illegalSender?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? illegalSender,
    required TResult orElse(),
  }) {
    if (illegalSender != null) {
      return illegalSender();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IllegalSender value) illegalSender,
  }) {
    return illegalSender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IllegalSender value)? illegalSender,
  }) {
    return illegalSender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IllegalSender value)? illegalSender,
    required TResult orElse(),
  }) {
    if (illegalSender != null) {
      return illegalSender(this);
    }
    return orElse();
  }
}

abstract class IllegalSender implements ChatFacadeFailure {
  const factory IllegalSender() = _$IllegalSender;
}
