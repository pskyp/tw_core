// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'development.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Development _$DevelopmentFromJson(Map<String, dynamic> json) {
  return _Development.fromJson(json);
}

/// @nodoc
class _$DevelopmentTearOff {
  const _$DevelopmentTearOff();

  _Development call(
      {required DevelopmentIdentifier developmentIdentifier,
      required String description,
      required LocationModel location}) {
    return _Development(
      developmentIdentifier: developmentIdentifier,
      description: description,
      location: location,
    );
  }

  Development fromJson(Map<String, Object?> json) {
    return Development.fromJson(json);
  }
}

/// @nodoc
const $Development = _$DevelopmentTearOff();

/// @nodoc
mixin _$Development {
  DevelopmentIdentifier get developmentIdentifier =>
      throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevelopmentCopyWith<Development> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevelopmentCopyWith<$Res> {
  factory $DevelopmentCopyWith(
          Development value, $Res Function(Development) then) =
      _$DevelopmentCopyWithImpl<$Res>;
  $Res call(
      {DevelopmentIdentifier developmentIdentifier,
      String description,
      LocationModel location});

  $DevelopmentIdentifierCopyWith<$Res> get developmentIdentifier;
}

/// @nodoc
class _$DevelopmentCopyWithImpl<$Res> implements $DevelopmentCopyWith<$Res> {
  _$DevelopmentCopyWithImpl(this._value, this._then);

  final Development _value;
  // ignore: unused_field
  final $Res Function(Development) _then;

  @override
  $Res call({
    Object? developmentIdentifier = freezed,
    Object? description = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      developmentIdentifier: developmentIdentifier == freezed
          ? _value.developmentIdentifier
          : developmentIdentifier // ignore: cast_nullable_to_non_nullable
              as DevelopmentIdentifier,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }

  @override
  $DevelopmentIdentifierCopyWith<$Res> get developmentIdentifier {
    return $DevelopmentIdentifierCopyWith<$Res>(_value.developmentIdentifier,
        (value) {
      return _then(_value.copyWith(developmentIdentifier: value));
    });
  }
}

/// @nodoc
abstract class _$DevelopmentCopyWith<$Res>
    implements $DevelopmentCopyWith<$Res> {
  factory _$DevelopmentCopyWith(
          _Development value, $Res Function(_Development) then) =
      __$DevelopmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {DevelopmentIdentifier developmentIdentifier,
      String description,
      LocationModel location});

  @override
  $DevelopmentIdentifierCopyWith<$Res> get developmentIdentifier;
}

/// @nodoc
class __$DevelopmentCopyWithImpl<$Res> extends _$DevelopmentCopyWithImpl<$Res>
    implements _$DevelopmentCopyWith<$Res> {
  __$DevelopmentCopyWithImpl(
      _Development _value, $Res Function(_Development) _then)
      : super(_value, (v) => _then(v as _Development));

  @override
  _Development get _value => super._value as _Development;

  @override
  $Res call({
    Object? developmentIdentifier = freezed,
    Object? description = freezed,
    Object? location = freezed,
  }) {
    return _then(_Development(
      developmentIdentifier: developmentIdentifier == freezed
          ? _value.developmentIdentifier
          : developmentIdentifier // ignore: cast_nullable_to_non_nullable
              as DevelopmentIdentifier,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Development extends _Development {
  _$_Development(
      {required this.developmentIdentifier,
      required this.description,
      required this.location})
      : super._();

  factory _$_Development.fromJson(Map<String, dynamic> json) =>
      _$$_DevelopmentFromJson(json);

  @override
  final DevelopmentIdentifier developmentIdentifier;
  @override
  final String description;
  @override
  final LocationModel location;

  @override
  String toString() {
    return 'Development(developmentIdentifier: $developmentIdentifier, description: $description, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Development &&
            const DeepCollectionEquality()
                .equals(other.developmentIdentifier, developmentIdentifier) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(developmentIdentifier),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$DevelopmentCopyWith<_Development> get copyWith =>
      __$DevelopmentCopyWithImpl<_Development>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DevelopmentToJson(this);
  }
}

abstract class _Development extends Development {
  factory _Development(
      {required DevelopmentIdentifier developmentIdentifier,
      required String description,
      required LocationModel location}) = _$_Development;
  _Development._() : super._();

  factory _Development.fromJson(Map<String, dynamic> json) =
      _$_Development.fromJson;

  @override
  DevelopmentIdentifier get developmentIdentifier;
  @override
  String get description;
  @override
  LocationModel get location;
  @override
  @JsonKey(ignore: true)
  _$DevelopmentCopyWith<_Development> get copyWith =>
      throw _privateConstructorUsedError;
}

DevelopmentIdentifier _$DevelopmentIdentifierFromJson(
    Map<String, dynamic> json) {
  return _DevelopmentIdentifier.fromJson(json);
}

/// @nodoc
class _$DevelopmentIdentifierTearOff {
  const _$DevelopmentIdentifierTearOff();

  _DevelopmentIdentifier call(
      {required String id,
      required String title,
      required String developerId}) {
    return _DevelopmentIdentifier(
      id: id,
      title: title,
      developerId: developerId,
    );
  }

  DevelopmentIdentifier fromJson(Map<String, Object?> json) {
    return DevelopmentIdentifier.fromJson(json);
  }
}

/// @nodoc
const $DevelopmentIdentifier = _$DevelopmentIdentifierTearOff();

/// @nodoc
mixin _$DevelopmentIdentifier {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get developerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevelopmentIdentifierCopyWith<DevelopmentIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevelopmentIdentifierCopyWith<$Res> {
  factory $DevelopmentIdentifierCopyWith(DevelopmentIdentifier value,
          $Res Function(DevelopmentIdentifier) then) =
      _$DevelopmentIdentifierCopyWithImpl<$Res>;
  $Res call({String id, String title, String developerId});
}

/// @nodoc
class _$DevelopmentIdentifierCopyWithImpl<$Res>
    implements $DevelopmentIdentifierCopyWith<$Res> {
  _$DevelopmentIdentifierCopyWithImpl(this._value, this._then);

  final DevelopmentIdentifier _value;
  // ignore: unused_field
  final $Res Function(DevelopmentIdentifier) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? developerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      developerId: developerId == freezed
          ? _value.developerId
          : developerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DevelopmentIdentifierCopyWith<$Res>
    implements $DevelopmentIdentifierCopyWith<$Res> {
  factory _$DevelopmentIdentifierCopyWith(_DevelopmentIdentifier value,
          $Res Function(_DevelopmentIdentifier) then) =
      __$DevelopmentIdentifierCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String developerId});
}

/// @nodoc
class __$DevelopmentIdentifierCopyWithImpl<$Res>
    extends _$DevelopmentIdentifierCopyWithImpl<$Res>
    implements _$DevelopmentIdentifierCopyWith<$Res> {
  __$DevelopmentIdentifierCopyWithImpl(_DevelopmentIdentifier _value,
      $Res Function(_DevelopmentIdentifier) _then)
      : super(_value, (v) => _then(v as _DevelopmentIdentifier));

  @override
  _DevelopmentIdentifier get _value => super._value as _DevelopmentIdentifier;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? developerId = freezed,
  }) {
    return _then(_DevelopmentIdentifier(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      developerId: developerId == freezed
          ? _value.developerId
          : developerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DevelopmentIdentifier extends _DevelopmentIdentifier {
  _$_DevelopmentIdentifier(
      {required this.id, required this.title, required this.developerId})
      : super._();

  factory _$_DevelopmentIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$_DevelopmentIdentifierFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String developerId;

  @override
  String toString() {
    return 'DevelopmentIdentifier(id: $id, title: $title, developerId: $developerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DevelopmentIdentifier &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.developerId, developerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(developerId));

  @JsonKey(ignore: true)
  @override
  _$DevelopmentIdentifierCopyWith<_DevelopmentIdentifier> get copyWith =>
      __$DevelopmentIdentifierCopyWithImpl<_DevelopmentIdentifier>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DevelopmentIdentifierToJson(this);
  }
}

abstract class _DevelopmentIdentifier extends DevelopmentIdentifier {
  factory _DevelopmentIdentifier(
      {required String id,
      required String title,
      required String developerId}) = _$_DevelopmentIdentifier;
  _DevelopmentIdentifier._() : super._();

  factory _DevelopmentIdentifier.fromJson(Map<String, dynamic> json) =
      _$_DevelopmentIdentifier.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get developerId;
  @override
  @JsonKey(ignore: true)
  _$DevelopmentIdentifierCopyWith<_DevelopmentIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}
