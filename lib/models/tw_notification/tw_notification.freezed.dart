// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tw_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TWNotification _$TWNotificationFromJson(Map<String, dynamic> json) {
  return _TWNotification.fromJson(json);
}

/// @nodoc
class _$TWNotificationTearOff {
  const _$TWNotificationTearOff();

  _TWNotification call(
      {required String title,
      required String intendedUserUID,
      required String text}) {
    return _TWNotification(
      title: title,
      intendedUserUID: intendedUserUID,
      text: text,
    );
  }

  TWNotification fromJson(Map<String, Object?> json) {
    return TWNotification.fromJson(json);
  }
}

/// @nodoc
const $TWNotification = _$TWNotificationTearOff();

/// @nodoc
mixin _$TWNotification {
  String get title => throw _privateConstructorUsedError;
  String get intendedUserUID => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TWNotificationCopyWith<TWNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TWNotificationCopyWith<$Res> {
  factory $TWNotificationCopyWith(
          TWNotification value, $Res Function(TWNotification) then) =
      _$TWNotificationCopyWithImpl<$Res>;
  $Res call({String title, String intendedUserUID, String text});
}

/// @nodoc
class _$TWNotificationCopyWithImpl<$Res>
    implements $TWNotificationCopyWith<$Res> {
  _$TWNotificationCopyWithImpl(this._value, this._then);

  final TWNotification _value;
  // ignore: unused_field
  final $Res Function(TWNotification) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? intendedUserUID = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      intendedUserUID: intendedUserUID == freezed
          ? _value.intendedUserUID
          : intendedUserUID // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TWNotificationCopyWith<$Res>
    implements $TWNotificationCopyWith<$Res> {
  factory _$TWNotificationCopyWith(
          _TWNotification value, $Res Function(_TWNotification) then) =
      __$TWNotificationCopyWithImpl<$Res>;
  @override
  $Res call({String title, String intendedUserUID, String text});
}

/// @nodoc
class __$TWNotificationCopyWithImpl<$Res>
    extends _$TWNotificationCopyWithImpl<$Res>
    implements _$TWNotificationCopyWith<$Res> {
  __$TWNotificationCopyWithImpl(
      _TWNotification _value, $Res Function(_TWNotification) _then)
      : super(_value, (v) => _then(v as _TWNotification));

  @override
  _TWNotification get _value => super._value as _TWNotification;

  @override
  $Res call({
    Object? title = freezed,
    Object? intendedUserUID = freezed,
    Object? text = freezed,
  }) {
    return _then(_TWNotification(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      intendedUserUID: intendedUserUID == freezed
          ? _value.intendedUserUID
          : intendedUserUID // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TWNotification implements _TWNotification {
  const _$_TWNotification(
      {required this.title, required this.intendedUserUID, required this.text});

  factory _$_TWNotification.fromJson(Map<String, dynamic> json) =>
      _$$_TWNotificationFromJson(json);

  @override
  final String title;
  @override
  final String intendedUserUID;
  @override
  final String text;

  @override
  String toString() {
    return 'TWNotification(title: $title, intendedUserUID: $intendedUserUID, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TWNotification &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.intendedUserUID, intendedUserUID) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(intendedUserUID),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$TWNotificationCopyWith<_TWNotification> get copyWith =>
      __$TWNotificationCopyWithImpl<_TWNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TWNotificationToJson(this);
  }
}

abstract class _TWNotification implements TWNotification {
  const factory _TWNotification(
      {required String title,
      required String intendedUserUID,
      required String text}) = _$_TWNotification;

  factory _TWNotification.fromJson(Map<String, dynamic> json) =
      _$_TWNotification.fromJson;

  @override
  String get title;
  @override
  String get intendedUserUID;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$TWNotificationCopyWith<_TWNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
