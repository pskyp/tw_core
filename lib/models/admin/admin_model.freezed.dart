// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Admin _$AdminFromJson(Map<String, dynamic> json) {
  return _Admin.fromJson(json);
}

/// @nodoc
class _$AdminTearOff {
  const _$AdminTearOff();

  _Admin call({required TWUser basicProfile}) {
    return _Admin(
      basicProfile: basicProfile,
    );
  }

  Admin fromJson(Map<String, Object?> json) {
    return Admin.fromJson(json);
  }
}

/// @nodoc
const $Admin = _$AdminTearOff();

/// @nodoc
mixin _$Admin {
  TWUser get basicProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminCopyWith<Admin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCopyWith<$Res> {
  factory $AdminCopyWith(Admin value, $Res Function(Admin) then) =
      _$AdminCopyWithImpl<$Res>;
  $Res call({TWUser basicProfile});
}

/// @nodoc
class _$AdminCopyWithImpl<$Res> implements $AdminCopyWith<$Res> {
  _$AdminCopyWithImpl(this._value, this._then);

  final Admin _value;
  // ignore: unused_field
  final $Res Function(Admin) _then;

  @override
  $Res call({
    Object? basicProfile = freezed,
  }) {
    return _then(_value.copyWith(
      basicProfile: basicProfile == freezed
          ? _value.basicProfile
          : basicProfile // ignore: cast_nullable_to_non_nullable
              as TWUser,
    ));
  }
}

/// @nodoc
abstract class _$AdminCopyWith<$Res> implements $AdminCopyWith<$Res> {
  factory _$AdminCopyWith(_Admin value, $Res Function(_Admin) then) =
      __$AdminCopyWithImpl<$Res>;
  @override
  $Res call({TWUser basicProfile});
}

/// @nodoc
class __$AdminCopyWithImpl<$Res> extends _$AdminCopyWithImpl<$Res>
    implements _$AdminCopyWith<$Res> {
  __$AdminCopyWithImpl(_Admin _value, $Res Function(_Admin) _then)
      : super(_value, (v) => _then(v as _Admin));

  @override
  _Admin get _value => super._value as _Admin;

  @override
  $Res call({
    Object? basicProfile = freezed,
  }) {
    return _then(_Admin(
      basicProfile: basicProfile == freezed
          ? _value.basicProfile
          : basicProfile // ignore: cast_nullable_to_non_nullable
              as TWUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Admin extends _Admin {
  const _$_Admin({required this.basicProfile}) : super._();

  factory _$_Admin.fromJson(Map<String, dynamic> json) =>
      _$$_AdminFromJson(json);

  @override
  final TWUser basicProfile;

  @override
  String toString() {
    return 'Admin(basicProfile: $basicProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Admin &&
            const DeepCollectionEquality()
                .equals(other.basicProfile, basicProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(basicProfile));

  @JsonKey(ignore: true)
  @override
  _$AdminCopyWith<_Admin> get copyWith =>
      __$AdminCopyWithImpl<_Admin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminToJson(this);
  }
}

abstract class _Admin extends Admin {
  const factory _Admin({required TWUser basicProfile}) = _$_Admin;
  const _Admin._() : super._();

  factory _Admin.fromJson(Map<String, dynamic> json) = _$_Admin.fromJson;

  @override
  TWUser get basicProfile;
  @override
  @JsonKey(ignore: true)
  _$AdminCopyWith<_Admin> get copyWith => throw _privateConstructorUsedError;
}
