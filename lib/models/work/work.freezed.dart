// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkIdentifier _$WorkIdentifierFromJson(Map<String, dynamic> json) {
  return _WorkIdentifier.fromJson(json);
}

/// @nodoc
class _$WorkIdentifierTearOff {
  const _$WorkIdentifierTearOff();

  _WorkIdentifier call(
      {required String workId,
      required String title,
      required TWUser employer,
      required WorkType type}) {
    return _WorkIdentifier(
      workId: workId,
      title: title,
      employer: employer,
      type: type,
    );
  }

  WorkIdentifier fromJson(Map<String, Object> json) {
    return WorkIdentifier.fromJson(json);
  }
}

/// @nodoc
const $WorkIdentifier = _$WorkIdentifierTearOff();

/// @nodoc
mixin _$WorkIdentifier {
  String get workId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  TWUser get employer => throw _privateConstructorUsedError;
  WorkType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkIdentifierCopyWith<WorkIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkIdentifierCopyWith<$Res> {
  factory $WorkIdentifierCopyWith(
          WorkIdentifier value, $Res Function(WorkIdentifier) then) =
      _$WorkIdentifierCopyWithImpl<$Res>;
  $Res call({String workId, String title, TWUser employer, WorkType type});
}

/// @nodoc
class _$WorkIdentifierCopyWithImpl<$Res>
    implements $WorkIdentifierCopyWith<$Res> {
  _$WorkIdentifierCopyWithImpl(this._value, this._then);

  final WorkIdentifier _value;
  // ignore: unused_field
  final $Res Function(WorkIdentifier) _then;

  @override
  $Res call({
    Object? workId = freezed,
    Object? title = freezed,
    Object? employer = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      workId: workId == freezed
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      employer: employer == freezed
          ? _value.employer
          : employer // ignore: cast_nullable_to_non_nullable
              as TWUser,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkType,
    ));
  }
}

/// @nodoc
abstract class _$WorkIdentifierCopyWith<$Res>
    implements $WorkIdentifierCopyWith<$Res> {
  factory _$WorkIdentifierCopyWith(
          _WorkIdentifier value, $Res Function(_WorkIdentifier) then) =
      __$WorkIdentifierCopyWithImpl<$Res>;
  @override
  $Res call({String workId, String title, TWUser employer, WorkType type});
}

/// @nodoc
class __$WorkIdentifierCopyWithImpl<$Res>
    extends _$WorkIdentifierCopyWithImpl<$Res>
    implements _$WorkIdentifierCopyWith<$Res> {
  __$WorkIdentifierCopyWithImpl(
      _WorkIdentifier _value, $Res Function(_WorkIdentifier) _then)
      : super(_value, (v) => _then(v as _WorkIdentifier));

  @override
  _WorkIdentifier get _value => super._value as _WorkIdentifier;

  @override
  $Res call({
    Object? workId = freezed,
    Object? title = freezed,
    Object? employer = freezed,
    Object? type = freezed,
  }) {
    return _then(_WorkIdentifier(
      workId: workId == freezed
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      employer: employer == freezed
          ? _value.employer
          : employer // ignore: cast_nullable_to_non_nullable
              as TWUser,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkIdentifier implements _WorkIdentifier {
  const _$_WorkIdentifier(
      {required this.workId,
      required this.title,
      required this.employer,
      required this.type});

  factory _$_WorkIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$_WorkIdentifierFromJson(json);

  @override
  final String workId;
  @override
  final String title;
  @override
  final TWUser employer;
  @override
  final WorkType type;

  @override
  String toString() {
    return 'WorkIdentifier(workId: $workId, title: $title, employer: $employer, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkIdentifier &&
            (identical(other.workId, workId) ||
                const DeepCollectionEquality().equals(other.workId, workId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.employer, employer) ||
                const DeepCollectionEquality()
                    .equals(other.employer, employer)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(employer) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$WorkIdentifierCopyWith<_WorkIdentifier> get copyWith =>
      __$WorkIdentifierCopyWithImpl<_WorkIdentifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkIdentifierToJson(this);
  }
}

abstract class _WorkIdentifier implements WorkIdentifier {
  const factory _WorkIdentifier(
      {required String workId,
      required String title,
      required TWUser employer,
      required WorkType type}) = _$_WorkIdentifier;

  factory _WorkIdentifier.fromJson(Map<String, dynamic> json) =
      _$_WorkIdentifier.fromJson;

  @override
  String get workId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  TWUser get employer => throw _privateConstructorUsedError;
  @override
  WorkType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkIdentifierCopyWith<_WorkIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}
