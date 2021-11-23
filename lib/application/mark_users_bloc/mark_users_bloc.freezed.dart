// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mark_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MarkUsersEventTearOff {
  const _$MarkUsersEventTearOff();

  MarkUserRequest markUserRequest(
      {required TWUser userToBeMarked, required bool markAsFavourite}) {
    return MarkUserRequest(
      userToBeMarked: userToBeMarked,
      markAsFavourite: markAsFavourite,
    );
  }

  UnMarkUserRequest unMarkUserRequest({required TWUser userToBeUnMarked}) {
    return UnMarkUserRequest(
      userToBeUnMarked: userToBeUnMarked,
    );
  }

  MarkedUsersFetched markedUsersFetched(KtList<MarkedUser> markedUsers) {
    return MarkedUsersFetched(
      markedUsers,
    );
  }
}

/// @nodoc
const $MarkUsersEvent = _$MarkUsersEventTearOff();

/// @nodoc
mixin _$MarkUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TWUser userToBeMarked, bool markAsFavourite)
        markUserRequest,
    required TResult Function(TWUser userToBeUnMarked) unMarkUserRequest,
    required TResult Function(KtList<MarkedUser> markedUsers)
        markedUsersFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TWUser userToBeMarked, bool markAsFavourite)?
        markUserRequest,
    TResult Function(TWUser userToBeUnMarked)? unMarkUserRequest,
    TResult Function(KtList<MarkedUser> markedUsers)? markedUsersFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkUserRequest value) markUserRequest,
    required TResult Function(UnMarkUserRequest value) unMarkUserRequest,
    required TResult Function(MarkedUsersFetched value) markedUsersFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkUserRequest value)? markUserRequest,
    TResult Function(UnMarkUserRequest value)? unMarkUserRequest,
    TResult Function(MarkedUsersFetched value)? markedUsersFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkUsersEventCopyWith<$Res> {
  factory $MarkUsersEventCopyWith(
          MarkUsersEvent value, $Res Function(MarkUsersEvent) then) =
      _$MarkUsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MarkUsersEventCopyWithImpl<$Res>
    implements $MarkUsersEventCopyWith<$Res> {
  _$MarkUsersEventCopyWithImpl(this._value, this._then);

  final MarkUsersEvent _value;
  // ignore: unused_field
  final $Res Function(MarkUsersEvent) _then;
}

/// @nodoc
abstract class $MarkUserRequestCopyWith<$Res> {
  factory $MarkUserRequestCopyWith(
          MarkUserRequest value, $Res Function(MarkUserRequest) then) =
      _$MarkUserRequestCopyWithImpl<$Res>;
  $Res call({TWUser userToBeMarked, bool markAsFavourite});
}

/// @nodoc
class _$MarkUserRequestCopyWithImpl<$Res>
    extends _$MarkUsersEventCopyWithImpl<$Res>
    implements $MarkUserRequestCopyWith<$Res> {
  _$MarkUserRequestCopyWithImpl(
      MarkUserRequest _value, $Res Function(MarkUserRequest) _then)
      : super(_value, (v) => _then(v as MarkUserRequest));

  @override
  MarkUserRequest get _value => super._value as MarkUserRequest;

  @override
  $Res call({
    Object? userToBeMarked = freezed,
    Object? markAsFavourite = freezed,
  }) {
    return _then(MarkUserRequest(
      userToBeMarked: userToBeMarked == freezed
          ? _value.userToBeMarked
          : userToBeMarked // ignore: cast_nullable_to_non_nullable
              as TWUser,
      markAsFavourite: markAsFavourite == freezed
          ? _value.markAsFavourite
          : markAsFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MarkUserRequest implements MarkUserRequest {
  _$MarkUserRequest(
      {required this.userToBeMarked, required this.markAsFavourite});

  @override
  final TWUser userToBeMarked;
  @override
  final bool markAsFavourite;

  @override
  String toString() {
    return 'MarkUsersEvent.markUserRequest(userToBeMarked: $userToBeMarked, markAsFavourite: $markAsFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkUserRequest &&
            (identical(other.userToBeMarked, userToBeMarked) ||
                const DeepCollectionEquality()
                    .equals(other.userToBeMarked, userToBeMarked)) &&
            (identical(other.markAsFavourite, markAsFavourite) ||
                const DeepCollectionEquality()
                    .equals(other.markAsFavourite, markAsFavourite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userToBeMarked) ^
      const DeepCollectionEquality().hash(markAsFavourite);

  @JsonKey(ignore: true)
  @override
  $MarkUserRequestCopyWith<MarkUserRequest> get copyWith =>
      _$MarkUserRequestCopyWithImpl<MarkUserRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TWUser userToBeMarked, bool markAsFavourite)
        markUserRequest,
    required TResult Function(TWUser userToBeUnMarked) unMarkUserRequest,
    required TResult Function(KtList<MarkedUser> markedUsers)
        markedUsersFetched,
  }) {
    return markUserRequest(userToBeMarked, markAsFavourite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TWUser userToBeMarked, bool markAsFavourite)?
        markUserRequest,
    TResult Function(TWUser userToBeUnMarked)? unMarkUserRequest,
    TResult Function(KtList<MarkedUser> markedUsers)? markedUsersFetched,
    required TResult orElse(),
  }) {
    if (markUserRequest != null) {
      return markUserRequest(userToBeMarked, markAsFavourite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkUserRequest value) markUserRequest,
    required TResult Function(UnMarkUserRequest value) unMarkUserRequest,
    required TResult Function(MarkedUsersFetched value) markedUsersFetched,
  }) {
    return markUserRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkUserRequest value)? markUserRequest,
    TResult Function(UnMarkUserRequest value)? unMarkUserRequest,
    TResult Function(MarkedUsersFetched value)? markedUsersFetched,
    required TResult orElse(),
  }) {
    if (markUserRequest != null) {
      return markUserRequest(this);
    }
    return orElse();
  }
}

abstract class MarkUserRequest implements MarkUsersEvent {
  factory MarkUserRequest(
      {required TWUser userToBeMarked,
      required bool markAsFavourite}) = _$MarkUserRequest;

  TWUser get userToBeMarked => throw _privateConstructorUsedError;
  bool get markAsFavourite => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkUserRequestCopyWith<MarkUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnMarkUserRequestCopyWith<$Res> {
  factory $UnMarkUserRequestCopyWith(
          UnMarkUserRequest value, $Res Function(UnMarkUserRequest) then) =
      _$UnMarkUserRequestCopyWithImpl<$Res>;
  $Res call({TWUser userToBeUnMarked});
}

/// @nodoc
class _$UnMarkUserRequestCopyWithImpl<$Res>
    extends _$MarkUsersEventCopyWithImpl<$Res>
    implements $UnMarkUserRequestCopyWith<$Res> {
  _$UnMarkUserRequestCopyWithImpl(
      UnMarkUserRequest _value, $Res Function(UnMarkUserRequest) _then)
      : super(_value, (v) => _then(v as UnMarkUserRequest));

  @override
  UnMarkUserRequest get _value => super._value as UnMarkUserRequest;

  @override
  $Res call({
    Object? userToBeUnMarked = freezed,
  }) {
    return _then(UnMarkUserRequest(
      userToBeUnMarked: userToBeUnMarked == freezed
          ? _value.userToBeUnMarked
          : userToBeUnMarked // ignore: cast_nullable_to_non_nullable
              as TWUser,
    ));
  }
}

/// @nodoc

class _$UnMarkUserRequest implements UnMarkUserRequest {
  _$UnMarkUserRequest({required this.userToBeUnMarked});

  @override
  final TWUser userToBeUnMarked;

  @override
  String toString() {
    return 'MarkUsersEvent.unMarkUserRequest(userToBeUnMarked: $userToBeUnMarked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnMarkUserRequest &&
            (identical(other.userToBeUnMarked, userToBeUnMarked) ||
                const DeepCollectionEquality()
                    .equals(other.userToBeUnMarked, userToBeUnMarked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userToBeUnMarked);

  @JsonKey(ignore: true)
  @override
  $UnMarkUserRequestCopyWith<UnMarkUserRequest> get copyWith =>
      _$UnMarkUserRequestCopyWithImpl<UnMarkUserRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TWUser userToBeMarked, bool markAsFavourite)
        markUserRequest,
    required TResult Function(TWUser userToBeUnMarked) unMarkUserRequest,
    required TResult Function(KtList<MarkedUser> markedUsers)
        markedUsersFetched,
  }) {
    return unMarkUserRequest(userToBeUnMarked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TWUser userToBeMarked, bool markAsFavourite)?
        markUserRequest,
    TResult Function(TWUser userToBeUnMarked)? unMarkUserRequest,
    TResult Function(KtList<MarkedUser> markedUsers)? markedUsersFetched,
    required TResult orElse(),
  }) {
    if (unMarkUserRequest != null) {
      return unMarkUserRequest(userToBeUnMarked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkUserRequest value) markUserRequest,
    required TResult Function(UnMarkUserRequest value) unMarkUserRequest,
    required TResult Function(MarkedUsersFetched value) markedUsersFetched,
  }) {
    return unMarkUserRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkUserRequest value)? markUserRequest,
    TResult Function(UnMarkUserRequest value)? unMarkUserRequest,
    TResult Function(MarkedUsersFetched value)? markedUsersFetched,
    required TResult orElse(),
  }) {
    if (unMarkUserRequest != null) {
      return unMarkUserRequest(this);
    }
    return orElse();
  }
}

abstract class UnMarkUserRequest implements MarkUsersEvent {
  factory UnMarkUserRequest({required TWUser userToBeUnMarked}) =
      _$UnMarkUserRequest;

  TWUser get userToBeUnMarked => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnMarkUserRequestCopyWith<UnMarkUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkedUsersFetchedCopyWith<$Res> {
  factory $MarkedUsersFetchedCopyWith(
          MarkedUsersFetched value, $Res Function(MarkedUsersFetched) then) =
      _$MarkedUsersFetchedCopyWithImpl<$Res>;
  $Res call({KtList<MarkedUser> markedUsers});
}

/// @nodoc
class _$MarkedUsersFetchedCopyWithImpl<$Res>
    extends _$MarkUsersEventCopyWithImpl<$Res>
    implements $MarkedUsersFetchedCopyWith<$Res> {
  _$MarkedUsersFetchedCopyWithImpl(
      MarkedUsersFetched _value, $Res Function(MarkedUsersFetched) _then)
      : super(_value, (v) => _then(v as MarkedUsersFetched));

  @override
  MarkedUsersFetched get _value => super._value as MarkedUsersFetched;

  @override
  $Res call({
    Object? markedUsers = freezed,
  }) {
    return _then(MarkedUsersFetched(
      markedUsers == freezed
          ? _value.markedUsers
          : markedUsers // ignore: cast_nullable_to_non_nullable
              as KtList<MarkedUser>,
    ));
  }
}

/// @nodoc

class _$MarkedUsersFetched implements MarkedUsersFetched {
  _$MarkedUsersFetched(this.markedUsers);

  @override
  final KtList<MarkedUser> markedUsers;

  @override
  String toString() {
    return 'MarkUsersEvent.markedUsersFetched(markedUsers: $markedUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkedUsersFetched &&
            (identical(other.markedUsers, markedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.markedUsers, markedUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(markedUsers);

  @JsonKey(ignore: true)
  @override
  $MarkedUsersFetchedCopyWith<MarkedUsersFetched> get copyWith =>
      _$MarkedUsersFetchedCopyWithImpl<MarkedUsersFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TWUser userToBeMarked, bool markAsFavourite)
        markUserRequest,
    required TResult Function(TWUser userToBeUnMarked) unMarkUserRequest,
    required TResult Function(KtList<MarkedUser> markedUsers)
        markedUsersFetched,
  }) {
    return markedUsersFetched(markedUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TWUser userToBeMarked, bool markAsFavourite)?
        markUserRequest,
    TResult Function(TWUser userToBeUnMarked)? unMarkUserRequest,
    TResult Function(KtList<MarkedUser> markedUsers)? markedUsersFetched,
    required TResult orElse(),
  }) {
    if (markedUsersFetched != null) {
      return markedUsersFetched(markedUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkUserRequest value) markUserRequest,
    required TResult Function(UnMarkUserRequest value) unMarkUserRequest,
    required TResult Function(MarkedUsersFetched value) markedUsersFetched,
  }) {
    return markedUsersFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkUserRequest value)? markUserRequest,
    TResult Function(UnMarkUserRequest value)? unMarkUserRequest,
    TResult Function(MarkedUsersFetched value)? markedUsersFetched,
    required TResult orElse(),
  }) {
    if (markedUsersFetched != null) {
      return markedUsersFetched(this);
    }
    return orElse();
  }
}

abstract class MarkedUsersFetched implements MarkUsersEvent {
  factory MarkedUsersFetched(KtList<MarkedUser> markedUsers) =
      _$MarkedUsersFetched;

  KtList<MarkedUser> get markedUsers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkedUsersFetchedCopyWith<MarkedUsersFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MarkUsersStateTearOff {
  const _$MarkUsersStateTearOff();

  _MarkUsersState call(
      {required Option<KtList<MarkedUser>> markedUsersOption,
      required bool fetchingMarkedUsers,
      required Option<Either<TWServerError, Unit>> resultOption,
      required bool submissionInProgress}) {
    return _MarkUsersState(
      markedUsersOption: markedUsersOption,
      fetchingMarkedUsers: fetchingMarkedUsers,
      resultOption: resultOption,
      submissionInProgress: submissionInProgress,
    );
  }
}

/// @nodoc
const $MarkUsersState = _$MarkUsersStateTearOff();

/// @nodoc
mixin _$MarkUsersState {
  Option<KtList<MarkedUser>> get markedUsersOption =>
      throw _privateConstructorUsedError;
  bool get fetchingMarkedUsers => throw _privateConstructorUsedError;
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;
  bool get submissionInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarkUsersStateCopyWith<MarkUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkUsersStateCopyWith<$Res> {
  factory $MarkUsersStateCopyWith(
          MarkUsersState value, $Res Function(MarkUsersState) then) =
      _$MarkUsersStateCopyWithImpl<$Res>;
  $Res call(
      {Option<KtList<MarkedUser>> markedUsersOption,
      bool fetchingMarkedUsers,
      Option<Either<TWServerError, Unit>> resultOption,
      bool submissionInProgress});
}

/// @nodoc
class _$MarkUsersStateCopyWithImpl<$Res>
    implements $MarkUsersStateCopyWith<$Res> {
  _$MarkUsersStateCopyWithImpl(this._value, this._then);

  final MarkUsersState _value;
  // ignore: unused_field
  final $Res Function(MarkUsersState) _then;

  @override
  $Res call({
    Object? markedUsersOption = freezed,
    Object? fetchingMarkedUsers = freezed,
    Object? resultOption = freezed,
    Object? submissionInProgress = freezed,
  }) {
    return _then(_value.copyWith(
      markedUsersOption: markedUsersOption == freezed
          ? _value.markedUsersOption
          : markedUsersOption // ignore: cast_nullable_to_non_nullable
              as Option<KtList<MarkedUser>>,
      fetchingMarkedUsers: fetchingMarkedUsers == freezed
          ? _value.fetchingMarkedUsers
          : fetchingMarkedUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MarkUsersStateCopyWith<$Res>
    implements $MarkUsersStateCopyWith<$Res> {
  factory _$MarkUsersStateCopyWith(
          _MarkUsersState value, $Res Function(_MarkUsersState) then) =
      __$MarkUsersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<KtList<MarkedUser>> markedUsersOption,
      bool fetchingMarkedUsers,
      Option<Either<TWServerError, Unit>> resultOption,
      bool submissionInProgress});
}

/// @nodoc
class __$MarkUsersStateCopyWithImpl<$Res>
    extends _$MarkUsersStateCopyWithImpl<$Res>
    implements _$MarkUsersStateCopyWith<$Res> {
  __$MarkUsersStateCopyWithImpl(
      _MarkUsersState _value, $Res Function(_MarkUsersState) _then)
      : super(_value, (v) => _then(v as _MarkUsersState));

  @override
  _MarkUsersState get _value => super._value as _MarkUsersState;

  @override
  $Res call({
    Object? markedUsersOption = freezed,
    Object? fetchingMarkedUsers = freezed,
    Object? resultOption = freezed,
    Object? submissionInProgress = freezed,
  }) {
    return _then(_MarkUsersState(
      markedUsersOption: markedUsersOption == freezed
          ? _value.markedUsersOption
          : markedUsersOption // ignore: cast_nullable_to_non_nullable
              as Option<KtList<MarkedUser>>,
      fetchingMarkedUsers: fetchingMarkedUsers == freezed
          ? _value.fetchingMarkedUsers
          : fetchingMarkedUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MarkUsersState extends _MarkUsersState {
  _$_MarkUsersState(
      {required this.markedUsersOption,
      required this.fetchingMarkedUsers,
      required this.resultOption,
      required this.submissionInProgress})
      : super._();

  @override
  final Option<KtList<MarkedUser>> markedUsersOption;
  @override
  final bool fetchingMarkedUsers;
  @override
  final Option<Either<TWServerError, Unit>> resultOption;
  @override
  final bool submissionInProgress;

  @override
  String toString() {
    return 'MarkUsersState(markedUsersOption: $markedUsersOption, fetchingMarkedUsers: $fetchingMarkedUsers, resultOption: $resultOption, submissionInProgress: $submissionInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarkUsersState &&
            (identical(other.markedUsersOption, markedUsersOption) ||
                const DeepCollectionEquality()
                    .equals(other.markedUsersOption, markedUsersOption)) &&
            (identical(other.fetchingMarkedUsers, fetchingMarkedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.fetchingMarkedUsers, fetchingMarkedUsers)) &&
            (identical(other.resultOption, resultOption) ||
                const DeepCollectionEquality()
                    .equals(other.resultOption, resultOption)) &&
            (identical(other.submissionInProgress, submissionInProgress) ||
                const DeepCollectionEquality()
                    .equals(other.submissionInProgress, submissionInProgress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(markedUsersOption) ^
      const DeepCollectionEquality().hash(fetchingMarkedUsers) ^
      const DeepCollectionEquality().hash(resultOption) ^
      const DeepCollectionEquality().hash(submissionInProgress);

  @JsonKey(ignore: true)
  @override
  _$MarkUsersStateCopyWith<_MarkUsersState> get copyWith =>
      __$MarkUsersStateCopyWithImpl<_MarkUsersState>(this, _$identity);
}

abstract class _MarkUsersState extends MarkUsersState {
  factory _MarkUsersState(
      {required Option<KtList<MarkedUser>> markedUsersOption,
      required bool fetchingMarkedUsers,
      required Option<Either<TWServerError, Unit>> resultOption,
      required bool submissionInProgress}) = _$_MarkUsersState;
  _MarkUsersState._() : super._();

  @override
  Option<KtList<MarkedUser>> get markedUsersOption =>
      throw _privateConstructorUsedError;
  @override
  bool get fetchingMarkedUsers => throw _privateConstructorUsedError;
  @override
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;
  @override
  bool get submissionInProgress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MarkUsersStateCopyWith<_MarkUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
