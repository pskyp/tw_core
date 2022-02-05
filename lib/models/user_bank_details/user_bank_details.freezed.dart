// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bank_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBankDetails _$UserBankDetailsFromJson(Map<String, dynamic> json) {
  return _UserBankDetails.fromJson(json);
}

/// @nodoc
class _$UserBankDetailsTearOff {
  const _$UserBankDetailsTearOff();

  _UserBankDetails call(
      {required String accountNumber, required String sortCode}) {
    return _UserBankDetails(
      accountNumber: accountNumber,
      sortCode: sortCode,
    );
  }

  UserBankDetails fromJson(Map<String, Object?> json) {
    return UserBankDetails.fromJson(json);
  }
}

/// @nodoc
const $UserBankDetails = _$UserBankDetailsTearOff();

/// @nodoc
mixin _$UserBankDetails {
  String get accountNumber => throw _privateConstructorUsedError;
  String get sortCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBankDetailsCopyWith<UserBankDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBankDetailsCopyWith<$Res> {
  factory $UserBankDetailsCopyWith(
          UserBankDetails value, $Res Function(UserBankDetails) then) =
      _$UserBankDetailsCopyWithImpl<$Res>;
  $Res call({String accountNumber, String sortCode});
}

/// @nodoc
class _$UserBankDetailsCopyWithImpl<$Res>
    implements $UserBankDetailsCopyWith<$Res> {
  _$UserBankDetailsCopyWithImpl(this._value, this._then);

  final UserBankDetails _value;
  // ignore: unused_field
  final $Res Function(UserBankDetails) _then;

  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
  }) {
    return _then(_value.copyWith(
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      sortCode: sortCode == freezed
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserBankDetailsCopyWith<$Res>
    implements $UserBankDetailsCopyWith<$Res> {
  factory _$UserBankDetailsCopyWith(
          _UserBankDetails value, $Res Function(_UserBankDetails) then) =
      __$UserBankDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String accountNumber, String sortCode});
}

/// @nodoc
class __$UserBankDetailsCopyWithImpl<$Res>
    extends _$UserBankDetailsCopyWithImpl<$Res>
    implements _$UserBankDetailsCopyWith<$Res> {
  __$UserBankDetailsCopyWithImpl(
      _UserBankDetails _value, $Res Function(_UserBankDetails) _then)
      : super(_value, (v) => _then(v as _UserBankDetails));

  @override
  _UserBankDetails get _value => super._value as _UserBankDetails;

  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
  }) {
    return _then(_UserBankDetails(
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      sortCode: sortCode == freezed
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBankDetails implements _UserBankDetails {
  _$_UserBankDetails({required this.accountNumber, required this.sortCode});

  factory _$_UserBankDetails.fromJson(Map<String, dynamic> json) =>
      _$$_UserBankDetailsFromJson(json);

  @override
  final String accountNumber;
  @override
  final String sortCode;

  @override
  String toString() {
    return 'UserBankDetails(accountNumber: $accountNumber, sortCode: $sortCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserBankDetails &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality().equals(other.sortCode, sortCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(sortCode));

  @JsonKey(ignore: true)
  @override
  _$UserBankDetailsCopyWith<_UserBankDetails> get copyWith =>
      __$UserBankDetailsCopyWithImpl<_UserBankDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBankDetailsToJson(this);
  }
}

abstract class _UserBankDetails implements UserBankDetails {
  factory _UserBankDetails(
      {required String accountNumber,
      required String sortCode}) = _$_UserBankDetails;

  factory _UserBankDetails.fromJson(Map<String, dynamic> json) =
      _$_UserBankDetails.fromJson;

  @override
  String get accountNumber;
  @override
  String get sortCode;
  @override
  @JsonKey(ignore: true)
  _$UserBankDetailsCopyWith<_UserBankDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
