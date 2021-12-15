// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBio _$UserBioFromJson(Map<String, dynamic> json) {
  return _UserBio.fromJson(json);
}

/// @nodoc
class _$UserBioTearOff {
  const _$UserBioTearOff();

  _UserBio call({required String coverLetter}) {
    return _UserBio(
      coverLetter: coverLetter,
    );
  }

  UserBio fromJson(Map<String, Object?> json) {
    return UserBio.fromJson(json);
  }
}

/// @nodoc
const $UserBio = _$UserBioTearOff();

/// @nodoc
mixin _$UserBio {
  String get coverLetter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBioCopyWith<UserBio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBioCopyWith<$Res> {
  factory $UserBioCopyWith(UserBio value, $Res Function(UserBio) then) =
      _$UserBioCopyWithImpl<$Res>;
  $Res call({String coverLetter});
}

/// @nodoc
class _$UserBioCopyWithImpl<$Res> implements $UserBioCopyWith<$Res> {
  _$UserBioCopyWithImpl(this._value, this._then);

  final UserBio _value;
  // ignore: unused_field
  final $Res Function(UserBio) _then;

  @override
  $Res call({
    Object? coverLetter = freezed,
  }) {
    return _then(_value.copyWith(
      coverLetter: coverLetter == freezed
          ? _value.coverLetter
          : coverLetter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserBioCopyWith<$Res> implements $UserBioCopyWith<$Res> {
  factory _$UserBioCopyWith(_UserBio value, $Res Function(_UserBio) then) =
      __$UserBioCopyWithImpl<$Res>;
  @override
  $Res call({String coverLetter});
}

/// @nodoc
class __$UserBioCopyWithImpl<$Res> extends _$UserBioCopyWithImpl<$Res>
    implements _$UserBioCopyWith<$Res> {
  __$UserBioCopyWithImpl(_UserBio _value, $Res Function(_UserBio) _then)
      : super(_value, (v) => _then(v as _UserBio));

  @override
  _UserBio get _value => super._value as _UserBio;

  @override
  $Res call({
    Object? coverLetter = freezed,
  }) {
    return _then(_UserBio(
      coverLetter: coverLetter == freezed
          ? _value.coverLetter
          : coverLetter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBio implements _UserBio {
  const _$_UserBio({required this.coverLetter});

  factory _$_UserBio.fromJson(Map<String, dynamic> json) =>
      _$$_UserBioFromJson(json);

  @override
  final String coverLetter;

  @override
  String toString() {
    return 'UserBio(coverLetter: $coverLetter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserBio &&
            const DeepCollectionEquality()
                .equals(other.coverLetter, coverLetter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(coverLetter));

  @JsonKey(ignore: true)
  @override
  _$UserBioCopyWith<_UserBio> get copyWith =>
      __$UserBioCopyWithImpl<_UserBio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBioToJson(this);
  }
}

abstract class _UserBio implements UserBio {
  const factory _UserBio({required String coverLetter}) = _$_UserBio;

  factory _UserBio.fromJson(Map<String, dynamic> json) = _$_UserBio.fromJson;

  @override
  String get coverLetter;
  @override
  @JsonKey(ignore: true)
  _$UserBioCopyWith<_UserBio> get copyWith =>
      throw _privateConstructorUsedError;
}
