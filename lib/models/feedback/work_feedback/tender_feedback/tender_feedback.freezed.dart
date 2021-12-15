// coverage:ignore-file
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

  _TenderFeedback call({required double rating}) {
    return _TenderFeedback(
      rating: rating,
    );
  }

  TenderFeedback fromJson(Map<String, Object?> json) {
    return TenderFeedback.fromJson(json);
  }
}

/// @nodoc
const $TenderFeedback = _$TenderFeedbackTearOff();

/// @nodoc
mixin _$TenderFeedback {
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenderFeedbackCopyWith<TenderFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenderFeedbackCopyWith<$Res> {
  factory $TenderFeedbackCopyWith(
          TenderFeedback value, $Res Function(TenderFeedback) then) =
      _$TenderFeedbackCopyWithImpl<$Res>;
  $Res call({double rating});
}

/// @nodoc
class _$TenderFeedbackCopyWithImpl<$Res>
    implements $TenderFeedbackCopyWith<$Res> {
  _$TenderFeedbackCopyWithImpl(this._value, this._then);

  final TenderFeedback _value;
  // ignore: unused_field
  final $Res Function(TenderFeedback) _then;

  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TenderFeedbackCopyWith<$Res>
    implements $TenderFeedbackCopyWith<$Res> {
  factory _$TenderFeedbackCopyWith(
          _TenderFeedback value, $Res Function(_TenderFeedback) then) =
      __$TenderFeedbackCopyWithImpl<$Res>;
  @override
  $Res call({double rating});
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

  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_TenderFeedback(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TenderFeedback implements _TenderFeedback {
  _$_TenderFeedback({required this.rating});

  factory _$_TenderFeedback.fromJson(Map<String, dynamic> json) =>
      _$$_TenderFeedbackFromJson(json);

  @override
  final double rating;

  @override
  String toString() {
    return 'TenderFeedback(rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TenderFeedback &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$TenderFeedbackCopyWith<_TenderFeedback> get copyWith =>
      __$TenderFeedbackCopyWithImpl<_TenderFeedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TenderFeedbackToJson(this);
  }
}

abstract class _TenderFeedback implements TenderFeedback {
  factory _TenderFeedback({required double rating}) = _$_TenderFeedback;

  factory _TenderFeedback.fromJson(Map<String, dynamic> json) =
      _$_TenderFeedback.fromJson;

  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$TenderFeedbackCopyWith<_TenderFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}
