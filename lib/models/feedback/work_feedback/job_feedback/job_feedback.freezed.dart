// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobFeedback _$JobFeedbackFromJson(Map<String, dynamic> json) {
  return _JobFeedback.fromJson(json);
}

/// @nodoc
class _$JobFeedbackTearOff {
  const _$JobFeedbackTearOff();

  _JobFeedback call(
      {required String jobId,
      required String subbieId,
      required String contractorId,
      required ContractorRating contractorRating}) {
    return _JobFeedback(
      jobId: jobId,
      subbieId: subbieId,
      contractorId: contractorId,
      contractorRating: contractorRating,
    );
  }

  JobFeedback fromJson(Map<String, Object?> json) {
    return JobFeedback.fromJson(json);
  }
}

/// @nodoc
const $JobFeedback = _$JobFeedbackTearOff();

/// @nodoc
mixin _$JobFeedback {
  String get jobId => throw _privateConstructorUsedError;
  String get subbieId => throw _privateConstructorUsedError;
  String get contractorId => throw _privateConstructorUsedError;
  ContractorRating get contractorRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobFeedbackCopyWith<JobFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobFeedbackCopyWith<$Res> {
  factory $JobFeedbackCopyWith(
          JobFeedback value, $Res Function(JobFeedback) then) =
      _$JobFeedbackCopyWithImpl<$Res>;
  $Res call(
      {String jobId,
      String subbieId,
      String contractorId,
      ContractorRating contractorRating});

  $ContractorRatingCopyWith<$Res> get contractorRating;
}

/// @nodoc
class _$JobFeedbackCopyWithImpl<$Res> implements $JobFeedbackCopyWith<$Res> {
  _$JobFeedbackCopyWithImpl(this._value, this._then);

  final JobFeedback _value;
  // ignore: unused_field
  final $Res Function(JobFeedback) _then;

  @override
  $Res call({
    Object? jobId = freezed,
    Object? subbieId = freezed,
    Object? contractorId = freezed,
    Object? contractorRating = freezed,
  }) {
    return _then(_value.copyWith(
      jobId: jobId == freezed
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      subbieId: subbieId == freezed
          ? _value.subbieId
          : subbieId // ignore: cast_nullable_to_non_nullable
              as String,
      contractorId: contractorId == freezed
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      contractorRating: contractorRating == freezed
          ? _value.contractorRating
          : contractorRating // ignore: cast_nullable_to_non_nullable
              as ContractorRating,
    ));
  }

  @override
  $ContractorRatingCopyWith<$Res> get contractorRating {
    return $ContractorRatingCopyWith<$Res>(_value.contractorRating, (value) {
      return _then(_value.copyWith(contractorRating: value));
    });
  }
}

/// @nodoc
abstract class _$JobFeedbackCopyWith<$Res>
    implements $JobFeedbackCopyWith<$Res> {
  factory _$JobFeedbackCopyWith(
          _JobFeedback value, $Res Function(_JobFeedback) then) =
      __$JobFeedbackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String jobId,
      String subbieId,
      String contractorId,
      ContractorRating contractorRating});

  @override
  $ContractorRatingCopyWith<$Res> get contractorRating;
}

/// @nodoc
class __$JobFeedbackCopyWithImpl<$Res> extends _$JobFeedbackCopyWithImpl<$Res>
    implements _$JobFeedbackCopyWith<$Res> {
  __$JobFeedbackCopyWithImpl(
      _JobFeedback _value, $Res Function(_JobFeedback) _then)
      : super(_value, (v) => _then(v as _JobFeedback));

  @override
  _JobFeedback get _value => super._value as _JobFeedback;

  @override
  $Res call({
    Object? jobId = freezed,
    Object? subbieId = freezed,
    Object? contractorId = freezed,
    Object? contractorRating = freezed,
  }) {
    return _then(_JobFeedback(
      jobId: jobId == freezed
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      subbieId: subbieId == freezed
          ? _value.subbieId
          : subbieId // ignore: cast_nullable_to_non_nullable
              as String,
      contractorId: contractorId == freezed
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      contractorRating: contractorRating == freezed
          ? _value.contractorRating
          : contractorRating // ignore: cast_nullable_to_non_nullable
              as ContractorRating,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobFeedback implements _JobFeedback {
  _$_JobFeedback(
      {required this.jobId,
      required this.subbieId,
      required this.contractorId,
      required this.contractorRating});

  factory _$_JobFeedback.fromJson(Map<String, dynamic> json) =>
      _$$_JobFeedbackFromJson(json);

  @override
  final String jobId;
  @override
  final String subbieId;
  @override
  final String contractorId;
  @override
  final ContractorRating contractorRating;

  @override
  String toString() {
    return 'JobFeedback(jobId: $jobId, subbieId: $subbieId, contractorId: $contractorId, contractorRating: $contractorRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JobFeedback &&
            const DeepCollectionEquality().equals(other.jobId, jobId) &&
            const DeepCollectionEquality().equals(other.subbieId, subbieId) &&
            const DeepCollectionEquality()
                .equals(other.contractorId, contractorId) &&
            const DeepCollectionEquality()
                .equals(other.contractorRating, contractorRating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(jobId),
      const DeepCollectionEquality().hash(subbieId),
      const DeepCollectionEquality().hash(contractorId),
      const DeepCollectionEquality().hash(contractorRating));

  @JsonKey(ignore: true)
  @override
  _$JobFeedbackCopyWith<_JobFeedback> get copyWith =>
      __$JobFeedbackCopyWithImpl<_JobFeedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobFeedbackToJson(this);
  }
}

abstract class _JobFeedback implements JobFeedback {
  factory _JobFeedback(
      {required String jobId,
      required String subbieId,
      required String contractorId,
      required ContractorRating contractorRating}) = _$_JobFeedback;

  factory _JobFeedback.fromJson(Map<String, dynamic> json) =
      _$_JobFeedback.fromJson;

  @override
  String get jobId;
  @override
  String get subbieId;
  @override
  String get contractorId;
  @override
  ContractorRating get contractorRating;
  @override
  @JsonKey(ignore: true)
  _$JobFeedbackCopyWith<_JobFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}
