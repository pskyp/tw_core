// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tender_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TenderFeedback _$TenderFeedbackFromJson(Map<String, dynamic> json) {
  return _TenderFeedback.fromJson(json);
}

/// @nodoc
class _$TenderFeedbackTearOff {
  const _$TenderFeedbackTearOff();

  _TenderFeedback call() {
    return _TenderFeedback();
  }

  TenderFeedback fromJson(Map<String, Object> json) {
    return TenderFeedback.fromJson(json);
  }
}

/// @nodoc
const $TenderFeedback = _$TenderFeedbackTearOff();

/// @nodoc
mixin _$TenderFeedback {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenderFeedbackCopyWith<$Res> {
  factory $TenderFeedbackCopyWith(
          TenderFeedback value, $Res Function(TenderFeedback) then) =
      _$TenderFeedbackCopyWithImpl<$Res>;
}

/// @nodoc
class _$TenderFeedbackCopyWithImpl<$Res>
    implements $TenderFeedbackCopyWith<$Res> {
  _$TenderFeedbackCopyWithImpl(this._value, this._then);

  final TenderFeedback _value;
  // ignore: unused_field
  final $Res Function(TenderFeedback) _then;
}

/// @nodoc
abstract class _$TenderFeedbackCopyWith<$Res> {
  factory _$TenderFeedbackCopyWith(
          _TenderFeedback value, $Res Function(_TenderFeedback) then) =
      __$TenderFeedbackCopyWithImpl<$Res>;
}

/// @nodoc
class __$TenderFeedbackCopyWithImpl<$Res>
    extends _$TenderFeedbackCopyWithImpl<$Res>
    implements _$TenderFeedbackCopyWith<$Res> {
  __$TenderFeedbackCopyWithImpl(
      _TenderFeedback _value, $Res Function(_TenderFeedback) _then)
      : super(_value, (v) => _then(v as _TenderFeedback));

  @override
  _TenderFeedback get _value => super._value as _TenderFeedback;
}

/// @nodoc
@JsonSerializable()
class _$_TenderFeedback implements _TenderFeedback {
  _$_TenderFeedback();

  factory _$_TenderFeedback.fromJson(Map<String, dynamic> json) =>
      _$$_TenderFeedbackFromJson(json);

  @override
  String toString() {
    return 'TenderFeedback()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TenderFeedback);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_TenderFeedbackToJson(this);
  }
}

abstract class _TenderFeedback implements TenderFeedback {
  factory _TenderFeedback() = _$_TenderFeedback;

  factory _TenderFeedback.fromJson(Map<String, dynamic> json) =
      _$_TenderFeedback.fromJson;
}
