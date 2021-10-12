// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supplement_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SupplementDetailEventTearOff {
  const _$SupplementDetailEventTearOff();

  Event event() {
    return const Event();
  }
}

/// @nodoc
const $SupplementDetailEvent = _$SupplementDetailEventTearOff();

/// @nodoc
mixin _$SupplementDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() event,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? event,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Event value) event,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Event value)? event,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementDetailEventCopyWith<$Res> {
  factory $SupplementDetailEventCopyWith(SupplementDetailEvent value,
          $Res Function(SupplementDetailEvent) then) =
      _$SupplementDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SupplementDetailEventCopyWithImpl<$Res>
    implements $SupplementDetailEventCopyWith<$Res> {
  _$SupplementDetailEventCopyWithImpl(this._value, this._then);

  final SupplementDetailEvent _value;
  // ignore: unused_field
  final $Res Function(SupplementDetailEvent) _then;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventCopyWithImpl<$Res>
    extends _$SupplementDetailEventCopyWithImpl<$Res>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(Event _value, $Res Function(Event) _then)
      : super(_value, (v) => _then(v as Event));

  @override
  Event get _value => super._value as Event;
}

/// @nodoc

class _$Event implements Event {
  const _$Event();

  @override
  String toString() {
    return 'SupplementDetailEvent.event()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Event);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() event,
  }) {
    return event();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? event,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Event value) event,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Event value)? event,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class Event implements SupplementDetailEvent {
  const factory Event() = _$Event;
}

/// @nodoc
class _$SupplementDetailStateTearOff {
  const _$SupplementDetailStateTearOff();

  _SupplementDetailState call({required Supplement supplement}) {
    return _SupplementDetailState(
      supplement: supplement,
    );
  }
}

/// @nodoc
const $SupplementDetailState = _$SupplementDetailStateTearOff();

/// @nodoc
mixin _$SupplementDetailState {
  Supplement get supplement => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupplementDetailStateCopyWith<SupplementDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementDetailStateCopyWith<$Res> {
  factory $SupplementDetailStateCopyWith(SupplementDetailState value,
          $Res Function(SupplementDetailState) then) =
      _$SupplementDetailStateCopyWithImpl<$Res>;
  $Res call({Supplement supplement});

  $SupplementCopyWith<$Res> get supplement;
}

/// @nodoc
class _$SupplementDetailStateCopyWithImpl<$Res>
    implements $SupplementDetailStateCopyWith<$Res> {
  _$SupplementDetailStateCopyWithImpl(this._value, this._then);

  final SupplementDetailState _value;
  // ignore: unused_field
  final $Res Function(SupplementDetailState) _then;

  @override
  $Res call({
    Object? supplement = freezed,
  }) {
    return _then(_value.copyWith(
      supplement: supplement == freezed
          ? _value.supplement
          : supplement // ignore: cast_nullable_to_non_nullable
              as Supplement,
    ));
  }

  @override
  $SupplementCopyWith<$Res> get supplement {
    return $SupplementCopyWith<$Res>(_value.supplement, (value) {
      return _then(_value.copyWith(supplement: value));
    });
  }
}

/// @nodoc
abstract class _$SupplementDetailStateCopyWith<$Res>
    implements $SupplementDetailStateCopyWith<$Res> {
  factory _$SupplementDetailStateCopyWith(_SupplementDetailState value,
          $Res Function(_SupplementDetailState) then) =
      __$SupplementDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({Supplement supplement});

  @override
  $SupplementCopyWith<$Res> get supplement;
}

/// @nodoc
class __$SupplementDetailStateCopyWithImpl<$Res>
    extends _$SupplementDetailStateCopyWithImpl<$Res>
    implements _$SupplementDetailStateCopyWith<$Res> {
  __$SupplementDetailStateCopyWithImpl(_SupplementDetailState _value,
      $Res Function(_SupplementDetailState) _then)
      : super(_value, (v) => _then(v as _SupplementDetailState));

  @override
  _SupplementDetailState get _value => super._value as _SupplementDetailState;

  @override
  $Res call({
    Object? supplement = freezed,
  }) {
    return _then(_SupplementDetailState(
      supplement: supplement == freezed
          ? _value.supplement
          : supplement // ignore: cast_nullable_to_non_nullable
              as Supplement,
    ));
  }
}

/// @nodoc

class _$_SupplementDetailState implements _SupplementDetailState {
  const _$_SupplementDetailState({required this.supplement});

  @override
  final Supplement supplement;

  @override
  String toString() {
    return 'SupplementDetailState(supplement: $supplement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SupplementDetailState &&
            (identical(other.supplement, supplement) ||
                const DeepCollectionEquality()
                    .equals(other.supplement, supplement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(supplement);

  @JsonKey(ignore: true)
  @override
  _$SupplementDetailStateCopyWith<_SupplementDetailState> get copyWith =>
      __$SupplementDetailStateCopyWithImpl<_SupplementDetailState>(
          this, _$identity);
}

abstract class _SupplementDetailState implements SupplementDetailState {
  const factory _SupplementDetailState({required Supplement supplement}) =
      _$_SupplementDetailState;

  @override
  Supplement get supplement => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SupplementDetailStateCopyWith<_SupplementDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
