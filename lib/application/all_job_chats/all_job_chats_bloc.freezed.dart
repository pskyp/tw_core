// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_job_chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AllJobChatsEventTearOff {
  const _$AllJobChatsEventTearOff();

  StreamChatRoomsUpdated streamChatRoomsUpdated(List<ChatRoom> chatRooms) {
    return StreamChatRoomsUpdated(
      chatRooms,
    );
  }

  StreamJobsUpdated streamJobsUpdated(List<Job> jobs) {
    return StreamJobsUpdated(
      jobs,
    );
  }

  StreamBidsUpdated streamBidsUpdated(List<Bid> bids) {
    return StreamBidsUpdated(
      bids,
    );
  }
}

/// @nodoc
const $AllJobChatsEvent = _$AllJobChatsEventTearOff();

/// @nodoc
mixin _$AllJobChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Job> jobs) streamJobsUpdated,
    required TResult Function(List<Bid> bids) streamBidsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Job> jobs)? streamJobsUpdated,
    TResult Function(List<Bid> bids)? streamBidsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamJobsUpdated value) streamJobsUpdated,
    required TResult Function(StreamBidsUpdated value) streamBidsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamJobsUpdated value)? streamJobsUpdated,
    TResult Function(StreamBidsUpdated value)? streamBidsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllJobChatsEventCopyWith<$Res> {
  factory $AllJobChatsEventCopyWith(
          AllJobChatsEvent value, $Res Function(AllJobChatsEvent) then) =
      _$AllJobChatsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllJobChatsEventCopyWithImpl<$Res>
    implements $AllJobChatsEventCopyWith<$Res> {
  _$AllJobChatsEventCopyWithImpl(this._value, this._then);

  final AllJobChatsEvent _value;
  // ignore: unused_field
  final $Res Function(AllJobChatsEvent) _then;
}

/// @nodoc
abstract class $StreamChatRoomsUpdatedCopyWith<$Res> {
  factory $StreamChatRoomsUpdatedCopyWith(StreamChatRoomsUpdated value,
          $Res Function(StreamChatRoomsUpdated) then) =
      _$StreamChatRoomsUpdatedCopyWithImpl<$Res>;
  $Res call({List<ChatRoom> chatRooms});
}

/// @nodoc
class _$StreamChatRoomsUpdatedCopyWithImpl<$Res>
    extends _$AllJobChatsEventCopyWithImpl<$Res>
    implements $StreamChatRoomsUpdatedCopyWith<$Res> {
  _$StreamChatRoomsUpdatedCopyWithImpl(StreamChatRoomsUpdated _value,
      $Res Function(StreamChatRoomsUpdated) _then)
      : super(_value, (v) => _then(v as StreamChatRoomsUpdated));

  @override
  StreamChatRoomsUpdated get _value => super._value as StreamChatRoomsUpdated;

  @override
  $Res call({
    Object? chatRooms = freezed,
  }) {
    return _then(StreamChatRoomsUpdated(
      chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as List<ChatRoom>,
    ));
  }
}

/// @nodoc

class _$StreamChatRoomsUpdated implements StreamChatRoomsUpdated {
  const _$StreamChatRoomsUpdated(this.chatRooms);

  @override
  final List<ChatRoom> chatRooms;

  @override
  String toString() {
    return 'AllJobChatsEvent.streamChatRoomsUpdated(chatRooms: $chatRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamChatRoomsUpdated &&
            (identical(other.chatRooms, chatRooms) ||
                const DeepCollectionEquality()
                    .equals(other.chatRooms, chatRooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatRooms);

  @JsonKey(ignore: true)
  @override
  $StreamChatRoomsUpdatedCopyWith<StreamChatRoomsUpdated> get copyWith =>
      _$StreamChatRoomsUpdatedCopyWithImpl<StreamChatRoomsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Job> jobs) streamJobsUpdated,
    required TResult Function(List<Bid> bids) streamBidsUpdated,
  }) {
    return streamChatRoomsUpdated(chatRooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Job> jobs)? streamJobsUpdated,
    TResult Function(List<Bid> bids)? streamBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamChatRoomsUpdated != null) {
      return streamChatRoomsUpdated(chatRooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamJobsUpdated value) streamJobsUpdated,
    required TResult Function(StreamBidsUpdated value) streamBidsUpdated,
  }) {
    return streamChatRoomsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamJobsUpdated value)? streamJobsUpdated,
    TResult Function(StreamBidsUpdated value)? streamBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamChatRoomsUpdated != null) {
      return streamChatRoomsUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamChatRoomsUpdated implements AllJobChatsEvent {
  const factory StreamChatRoomsUpdated(List<ChatRoom> chatRooms) =
      _$StreamChatRoomsUpdated;

  List<ChatRoom> get chatRooms => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamChatRoomsUpdatedCopyWith<StreamChatRoomsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamJobsUpdatedCopyWith<$Res> {
  factory $StreamJobsUpdatedCopyWith(
          StreamJobsUpdated value, $Res Function(StreamJobsUpdated) then) =
      _$StreamJobsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Job> jobs});
}

/// @nodoc
class _$StreamJobsUpdatedCopyWithImpl<$Res>
    extends _$AllJobChatsEventCopyWithImpl<$Res>
    implements $StreamJobsUpdatedCopyWith<$Res> {
  _$StreamJobsUpdatedCopyWithImpl(
      StreamJobsUpdated _value, $Res Function(StreamJobsUpdated) _then)
      : super(_value, (v) => _then(v as StreamJobsUpdated));

  @override
  StreamJobsUpdated get _value => super._value as StreamJobsUpdated;

  @override
  $Res call({
    Object? jobs = freezed,
  }) {
    return _then(StreamJobsUpdated(
      jobs == freezed
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ));
  }
}

/// @nodoc

class _$StreamJobsUpdated implements StreamJobsUpdated {
  const _$StreamJobsUpdated(this.jobs);

  @override
  final List<Job> jobs;

  @override
  String toString() {
    return 'AllJobChatsEvent.streamJobsUpdated(jobs: $jobs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamJobsUpdated &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(jobs);

  @JsonKey(ignore: true)
  @override
  $StreamJobsUpdatedCopyWith<StreamJobsUpdated> get copyWith =>
      _$StreamJobsUpdatedCopyWithImpl<StreamJobsUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Job> jobs) streamJobsUpdated,
    required TResult Function(List<Bid> bids) streamBidsUpdated,
  }) {
    return streamJobsUpdated(jobs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Job> jobs)? streamJobsUpdated,
    TResult Function(List<Bid> bids)? streamBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamJobsUpdated != null) {
      return streamJobsUpdated(jobs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamJobsUpdated value) streamJobsUpdated,
    required TResult Function(StreamBidsUpdated value) streamBidsUpdated,
  }) {
    return streamJobsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamJobsUpdated value)? streamJobsUpdated,
    TResult Function(StreamBidsUpdated value)? streamBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamJobsUpdated != null) {
      return streamJobsUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamJobsUpdated implements AllJobChatsEvent {
  const factory StreamJobsUpdated(List<Job> jobs) = _$StreamJobsUpdated;

  List<Job> get jobs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamJobsUpdatedCopyWith<StreamJobsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamBidsUpdatedCopyWith<$Res> {
  factory $StreamBidsUpdatedCopyWith(
          StreamBidsUpdated value, $Res Function(StreamBidsUpdated) then) =
      _$StreamBidsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Bid> bids});
}

/// @nodoc
class _$StreamBidsUpdatedCopyWithImpl<$Res>
    extends _$AllJobChatsEventCopyWithImpl<$Res>
    implements $StreamBidsUpdatedCopyWith<$Res> {
  _$StreamBidsUpdatedCopyWithImpl(
      StreamBidsUpdated _value, $Res Function(StreamBidsUpdated) _then)
      : super(_value, (v) => _then(v as StreamBidsUpdated));

  @override
  StreamBidsUpdated get _value => super._value as StreamBidsUpdated;

  @override
  $Res call({
    Object? bids = freezed,
  }) {
    return _then(StreamBidsUpdated(
      bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<Bid>,
    ));
  }
}

/// @nodoc

class _$StreamBidsUpdated implements StreamBidsUpdated {
  const _$StreamBidsUpdated(this.bids);

  @override
  final List<Bid> bids;

  @override
  String toString() {
    return 'AllJobChatsEvent.streamBidsUpdated(bids: $bids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamBidsUpdated &&
            (identical(other.bids, bids) ||
                const DeepCollectionEquality().equals(other.bids, bids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bids);

  @JsonKey(ignore: true)
  @override
  $StreamBidsUpdatedCopyWith<StreamBidsUpdated> get copyWith =>
      _$StreamBidsUpdatedCopyWithImpl<StreamBidsUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Job> jobs) streamJobsUpdated,
    required TResult Function(List<Bid> bids) streamBidsUpdated,
  }) {
    return streamBidsUpdated(bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Job> jobs)? streamJobsUpdated,
    TResult Function(List<Bid> bids)? streamBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamBidsUpdated != null) {
      return streamBidsUpdated(bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamJobsUpdated value) streamJobsUpdated,
    required TResult Function(StreamBidsUpdated value) streamBidsUpdated,
  }) {
    return streamBidsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamJobsUpdated value)? streamJobsUpdated,
    TResult Function(StreamBidsUpdated value)? streamBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamBidsUpdated != null) {
      return streamBidsUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamBidsUpdated implements AllJobChatsEvent {
  const factory StreamBidsUpdated(List<Bid> bids) = _$StreamBidsUpdated;

  List<Bid> get bids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamBidsUpdatedCopyWith<StreamBidsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AllJobChatsStateTearOff {
  const _$AllJobChatsStateTearOff();

  _AllJobChatsState call(
      {required Option<List<Job>> jobs,
      required Option<List<Bid>> bids,
      required Option<List<ChatRoom>> chatRooms}) {
    return _AllJobChatsState(
      jobs: jobs,
      bids: bids,
      chatRooms: chatRooms,
    );
  }
}

/// @nodoc
const $AllJobChatsState = _$AllJobChatsStateTearOff();

/// @nodoc
mixin _$AllJobChatsState {
  Option<List<Job>> get jobs => throw _privateConstructorUsedError;
  Option<List<Bid>> get bids => throw _privateConstructorUsedError;
  Option<List<ChatRoom>> get chatRooms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllJobChatsStateCopyWith<AllJobChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllJobChatsStateCopyWith<$Res> {
  factory $AllJobChatsStateCopyWith(
          AllJobChatsState value, $Res Function(AllJobChatsState) then) =
      _$AllJobChatsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<List<Job>> jobs,
      Option<List<Bid>> bids,
      Option<List<ChatRoom>> chatRooms});
}

/// @nodoc
class _$AllJobChatsStateCopyWithImpl<$Res>
    implements $AllJobChatsStateCopyWith<$Res> {
  _$AllJobChatsStateCopyWithImpl(this._value, this._then);

  final AllJobChatsState _value;
  // ignore: unused_field
  final $Res Function(AllJobChatsState) _then;

  @override
  $Res call({
    Object? jobs = freezed,
    Object? bids = freezed,
    Object? chatRooms = freezed,
  }) {
    return _then(_value.copyWith(
      jobs: jobs == freezed
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as Option<List<Job>>,
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as Option<List<Bid>>,
      chatRooms: chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as Option<List<ChatRoom>>,
    ));
  }
}

/// @nodoc
abstract class _$AllJobChatsStateCopyWith<$Res>
    implements $AllJobChatsStateCopyWith<$Res> {
  factory _$AllJobChatsStateCopyWith(
          _AllJobChatsState value, $Res Function(_AllJobChatsState) then) =
      __$AllJobChatsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<List<Job>> jobs,
      Option<List<Bid>> bids,
      Option<List<ChatRoom>> chatRooms});
}

/// @nodoc
class __$AllJobChatsStateCopyWithImpl<$Res>
    extends _$AllJobChatsStateCopyWithImpl<$Res>
    implements _$AllJobChatsStateCopyWith<$Res> {
  __$AllJobChatsStateCopyWithImpl(
      _AllJobChatsState _value, $Res Function(_AllJobChatsState) _then)
      : super(_value, (v) => _then(v as _AllJobChatsState));

  @override
  _AllJobChatsState get _value => super._value as _AllJobChatsState;

  @override
  $Res call({
    Object? jobs = freezed,
    Object? bids = freezed,
    Object? chatRooms = freezed,
  }) {
    return _then(_AllJobChatsState(
      jobs: jobs == freezed
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as Option<List<Job>>,
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as Option<List<Bid>>,
      chatRooms: chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as Option<List<ChatRoom>>,
    ));
  }
}

/// @nodoc

class _$_AllJobChatsState implements _AllJobChatsState {
  const _$_AllJobChatsState(
      {required this.jobs, required this.bids, required this.chatRooms});

  @override
  final Option<List<Job>> jobs;
  @override
  final Option<List<Bid>> bids;
  @override
  final Option<List<ChatRoom>> chatRooms;

  @override
  String toString() {
    return 'AllJobChatsState(jobs: $jobs, bids: $bids, chatRooms: $chatRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllJobChatsState &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)) &&
            (identical(other.bids, bids) ||
                const DeepCollectionEquality().equals(other.bids, bids)) &&
            (identical(other.chatRooms, chatRooms) ||
                const DeepCollectionEquality()
                    .equals(other.chatRooms, chatRooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(jobs) ^
      const DeepCollectionEquality().hash(bids) ^
      const DeepCollectionEquality().hash(chatRooms);

  @JsonKey(ignore: true)
  @override
  _$AllJobChatsStateCopyWith<_AllJobChatsState> get copyWith =>
      __$AllJobChatsStateCopyWithImpl<_AllJobChatsState>(this, _$identity);
}

abstract class _AllJobChatsState implements AllJobChatsState {
  const factory _AllJobChatsState(
      {required Option<List<Job>> jobs,
      required Option<List<Bid>> bids,
      required Option<List<ChatRoom>> chatRooms}) = _$_AllJobChatsState;

  @override
  Option<List<Job>> get jobs => throw _privateConstructorUsedError;
  @override
  Option<List<Bid>> get bids => throw _privateConstructorUsedError;
  @override
  Option<List<ChatRoom>> get chatRooms => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AllJobChatsStateCopyWith<_AllJobChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}
