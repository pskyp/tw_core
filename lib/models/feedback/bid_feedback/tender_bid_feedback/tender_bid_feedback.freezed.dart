// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tender_bid_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TenderBidFeedback _$TenderBidFeedbackFromJson(Map<String, dynamic> json) {
  return _TenderBidFeedback.fromJson(json);
}

/// @nodoc
class _$TenderBidFeedbackTearOff {
  const _$TenderBidFeedbackTearOff();

  _TenderBidFeedback call({required double rating}) {
    return _TenderBidFeedback(
      rating: rating,
    );
  }

  TenderBidFeedback fromJson(Map<String, Object> json) {
    return TenderBidFeedback.fromJson(json);
  }
}

/// @nodoc
const $TenderBidFeedback = _$TenderBidFeedbackTearOff();

/// @nodoc
mixin _$TenderBidFeedback {
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenderBidFeedbackCopyWith<TenderBidFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenderBidFeedbackCopyWith<$Res> {
  factory $TenderBidFeedbackCopyWith(
          TenderBidFeedback value, $Res Function(TenderBidFeedback) then) =
      _$TenderBidFeedbackCopyWithImpl<$Res>;
  $Res call({double rating});
}

/// @nodoc
class _$TenderBidFeedbackCopyWithImpl<$Res>
    implements $TenderBidFeedbackCopyWith<$Res> {
  _$TenderBidFeedbackCopyWithImpl(this._value, this._then);

  final TenderBidFeedback _value;
  // ignore: unused_field
  final $Res Function(TenderBidFeedback) _then;

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
abstract class _$TenderBidFeedbackCopyWith<$Res>
    implements $TenderBidFeedbackCopyWith<$Res> {
  factory _$TenderBidFeedbackCopyWith(
          _TenderBidFeedback value, $Res Function(_TenderBidFeedback) then) =
      __$TenderBidFeedbackCopyWithImpl<$Res>;
  @override
  $Res call({double rating});
}

/// @nodoc
class __$TenderBidFeedbackCopyWithImpl<$Res>
    extends _$TenderBidFeedbackCopyWithImpl<$Res>
    implements _$TenderBidFeedbackCopyWith<$Res> {
  __$TenderBidFeedbackCopyWithImpl(
      _TenderBidFeedback _value, $Res Function(_TenderBidFeedback) _then)
      : super(_value, (v) => _then(v as _TenderBidFeedback));

  @override
  _TenderBidFeedback get _value => super._value as _TenderBidFeedback;

  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_TenderBidFeedback(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TenderBidFeedback implements _TenderBidFeedback {
  _$_TenderBidFeedback({required this.rating});

  factory _$_TenderBidFeedback.fromJson(Map<String, dynamic> json) =>
      _$$_TenderBidFeedbackFromJson(json);

  @override
  final double rating;

  @override
  String toString() {
    return 'TenderBidFeedback(rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenderBidFeedback &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$TenderBidFeedbackCopyWith<_TenderBidFeedback> get copyWith =>
      __$TenderBidFeedbackCopyWithImpl<_TenderBidFeedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TenderBidFeedbackToJson(this);
  }
}

abstract class _TenderBidFeedback implements TenderBidFeedback {
  factory _TenderBidFeedback({required double rating}) = _$_TenderBidFeedback;

  factory _TenderBidFeedback.fromJson(Map<String, dynamic> json) =
      _$_TenderBidFeedback.fromJson;

  @override
  double get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TenderBidFeedbackCopyWith<_TenderBidFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}
