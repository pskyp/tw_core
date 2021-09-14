// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tender_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApplyTenderFailureTearOff {
  const _$ApplyTenderFailureTearOff();

  ServerErrorApplyTender serverError() {
    return const ServerErrorApplyTender();
  }
}

/// @nodoc
const $ApplyTenderFailure = _$ApplyTenderFailureTearOff();

/// @nodoc
mixin _$ApplyTenderFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorApplyTender value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorApplyTender value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyTenderFailureCopyWith<$Res> {
  factory $ApplyTenderFailureCopyWith(
          ApplyTenderFailure value, $Res Function(ApplyTenderFailure) then) =
      _$ApplyTenderFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApplyTenderFailureCopyWithImpl<$Res>
    implements $ApplyTenderFailureCopyWith<$Res> {
  _$ApplyTenderFailureCopyWithImpl(this._value, this._then);

  final ApplyTenderFailure _value;
  // ignore: unused_field
  final $Res Function(ApplyTenderFailure) _then;
}

/// @nodoc
abstract class $ServerErrorApplyTenderCopyWith<$Res> {
  factory $ServerErrorApplyTenderCopyWith(ServerErrorApplyTender value,
          $Res Function(ServerErrorApplyTender) then) =
      _$ServerErrorApplyTenderCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorApplyTenderCopyWithImpl<$Res>
    extends _$ApplyTenderFailureCopyWithImpl<$Res>
    implements $ServerErrorApplyTenderCopyWith<$Res> {
  _$ServerErrorApplyTenderCopyWithImpl(ServerErrorApplyTender _value,
      $Res Function(ServerErrorApplyTender) _then)
      : super(_value, (v) => _then(v as ServerErrorApplyTender));

  @override
  ServerErrorApplyTender get _value => super._value as ServerErrorApplyTender;
}

/// @nodoc

class _$ServerErrorApplyTender implements ServerErrorApplyTender {
  const _$ServerErrorApplyTender();

  @override
  String toString() {
    return 'ApplyTenderFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerErrorApplyTender);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerErrorApplyTender value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerErrorApplyTender value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerErrorApplyTender implements ApplyTenderFailure {
  const factory ServerErrorApplyTender() = _$ServerErrorApplyTender;
}
