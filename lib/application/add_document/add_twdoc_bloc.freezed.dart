// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_twdoc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddTWDocStateTearOff {
  const _$AddTWDocStateTearOff();

  _AddTWDocState call({required String docName}) {
    return _AddTWDocState(
      docName: docName,
    );
  }
}

/// @nodoc
const $AddTWDocState = _$AddTWDocStateTearOff();

/// @nodoc
mixin _$AddTWDocState {
  String get docName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTWDocStateCopyWith<AddTWDocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTWDocStateCopyWith<$Res> {
  factory $AddTWDocStateCopyWith(
          AddTWDocState value, $Res Function(AddTWDocState) then) =
      _$AddTWDocStateCopyWithImpl<$Res>;
  $Res call({String docName});
}

/// @nodoc
class _$AddTWDocStateCopyWithImpl<$Res>
    implements $AddTWDocStateCopyWith<$Res> {
  _$AddTWDocStateCopyWithImpl(this._value, this._then);

  final AddTWDocState _value;
  // ignore: unused_field
  final $Res Function(AddTWDocState) _then;

  @override
  $Res call({
    Object? docName = freezed,
  }) {
    return _then(_value.copyWith(
      docName: docName == freezed
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddTWDocStateCopyWith<$Res>
    implements $AddTWDocStateCopyWith<$Res> {
  factory _$AddTWDocStateCopyWith(
          _AddTWDocState value, $Res Function(_AddTWDocState) then) =
      __$AddTWDocStateCopyWithImpl<$Res>;
  @override
  $Res call({String docName});
}

/// @nodoc
class __$AddTWDocStateCopyWithImpl<$Res>
    extends _$AddTWDocStateCopyWithImpl<$Res>
    implements _$AddTWDocStateCopyWith<$Res> {
  __$AddTWDocStateCopyWithImpl(
      _AddTWDocState _value, $Res Function(_AddTWDocState) _then)
      : super(_value, (v) => _then(v as _AddTWDocState));

  @override
  _AddTWDocState get _value => super._value as _AddTWDocState;

  @override
  $Res call({
    Object? docName = freezed,
  }) {
    return _then(_AddTWDocState(
      docName: docName == freezed
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddTWDocState implements _AddTWDocState {
  const _$_AddTWDocState({required this.docName});

  @override
  final String docName;

  @override
  String toString() {
    return 'AddTWDocState(docName: $docName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddTWDocState &&
            (identical(other.docName, docName) ||
                const DeepCollectionEquality().equals(other.docName, docName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(docName);

  @JsonKey(ignore: true)
  @override
  _$AddTWDocStateCopyWith<_AddTWDocState> get copyWith =>
      __$AddTWDocStateCopyWithImpl<_AddTWDocState>(this, _$identity);
}

abstract class _AddTWDocState implements AddTWDocState {
  const factory _AddTWDocState({required String docName}) = _$_AddTWDocState;

  @override
  String get docName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddTWDocStateCopyWith<_AddTWDocState> get copyWith =>
      throw _privateConstructorUsedError;
}
