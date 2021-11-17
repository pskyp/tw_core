// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contractor_rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContractorRating _$ContractorRatingFromJson(Map<String, dynamic> json) {
  return _ContractorRating.fromJson(json);
}

/// @nodoc
class _$ContractorRatingTearOff {
  const _$ContractorRatingTearOff();

  _ContractorRating call(
      {required double reliability,
      required double communication,
      required double environment}) {
    return _ContractorRating(
      reliability: reliability,
      communication: communication,
      environment: environment,
    );
  }

  ContractorRating fromJson(Map<String, Object> json) {
    return ContractorRating.fromJson(json);
  }
}

/// @nodoc
const $ContractorRating = _$ContractorRatingTearOff();

/// @nodoc
mixin _$ContractorRating {
  double get reliability => throw _privateConstructorUsedError;
  double get communication => throw _privateConstructorUsedError;
  double get environment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorRatingCopyWith<ContractorRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorRatingCopyWith<$Res> {
  factory $ContractorRatingCopyWith(
          ContractorRating value, $Res Function(ContractorRating) then) =
      _$ContractorRatingCopyWithImpl<$Res>;
  $Res call({double reliability, double communication, double environment});
}

/// @nodoc
class _$ContractorRatingCopyWithImpl<$Res>
    implements $ContractorRatingCopyWith<$Res> {
  _$ContractorRatingCopyWithImpl(this._value, this._then);

  final ContractorRating _value;
  // ignore: unused_field
  final $Res Function(ContractorRating) _then;

  @override
  $Res call({
    Object? reliability = freezed,
    Object? communication = freezed,
    Object? environment = freezed,
  }) {
    return _then(_value.copyWith(
      reliability: reliability == freezed
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double,
      communication: communication == freezed
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as double,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ContractorRatingCopyWith<$Res>
    implements $ContractorRatingCopyWith<$Res> {
  factory _$ContractorRatingCopyWith(
          _ContractorRating value, $Res Function(_ContractorRating) then) =
      __$ContractorRatingCopyWithImpl<$Res>;
  @override
  $Res call({double reliability, double communication, double environment});
}

/// @nodoc
class __$ContractorRatingCopyWithImpl<$Res>
    extends _$ContractorRatingCopyWithImpl<$Res>
    implements _$ContractorRatingCopyWith<$Res> {
  __$ContractorRatingCopyWithImpl(
      _ContractorRating _value, $Res Function(_ContractorRating) _then)
      : super(_value, (v) => _then(v as _ContractorRating));

  @override
  _ContractorRating get _value => super._value as _ContractorRating;

  @override
  $Res call({
    Object? reliability = freezed,
    Object? communication = freezed,
    Object? environment = freezed,
  }) {
    return _then(_ContractorRating(
      reliability: reliability == freezed
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double,
      communication: communication == freezed
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as double,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContractorRating implements _ContractorRating {
  _$_ContractorRating(
      {required this.reliability,
      required this.communication,
      required this.environment});

  factory _$_ContractorRating.fromJson(Map<String, dynamic> json) =>
      _$$_ContractorRatingFromJson(json);

  @override
  final double reliability;
  @override
  final double communication;
  @override
  final double environment;

  @override
  String toString() {
    return 'ContractorRating(reliability: $reliability, communication: $communication, environment: $environment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContractorRating &&
            (identical(other.reliability, reliability) ||
                const DeepCollectionEquality()
                    .equals(other.reliability, reliability)) &&
            (identical(other.communication, communication) ||
                const DeepCollectionEquality()
                    .equals(other.communication, communication)) &&
            (identical(other.environment, environment) ||
                const DeepCollectionEquality()
                    .equals(other.environment, environment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reliability) ^
      const DeepCollectionEquality().hash(communication) ^
      const DeepCollectionEquality().hash(environment);

  @JsonKey(ignore: true)
  @override
  _$ContractorRatingCopyWith<_ContractorRating> get copyWith =>
      __$ContractorRatingCopyWithImpl<_ContractorRating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractorRatingToJson(this);
  }
}

abstract class _ContractorRating implements ContractorRating {
  factory _ContractorRating(
      {required double reliability,
      required double communication,
      required double environment}) = _$_ContractorRating;

  factory _ContractorRating.fromJson(Map<String, dynamic> json) =
      _$_ContractorRating.fromJson;

  @override
  double get reliability => throw _privateConstructorUsedError;
  @override
  double get communication => throw _privateConstructorUsedError;
  @override
  double get environment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContractorRatingCopyWith<_ContractorRating> get copyWith =>
      throw _privateConstructorUsedError;
}
