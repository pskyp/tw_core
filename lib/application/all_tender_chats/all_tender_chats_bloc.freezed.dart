// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_tender_chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AllTenderChatsEventTearOff {
  const _$AllTenderChatsEventTearOff();

  StreamChatRoomsUpdated streamChatRoomsUpdated(List<ChatRoom> chatRooms) {
    return StreamChatRoomsUpdated(
      chatRooms,
    );
  }

  StreamTendersUpdated streamTendersUpdated(List<Tender> tenders) {
    return StreamTendersUpdated(
      tenders,
    );
  }

  StreamTenderBidsUpdated streamTenderBidsUpdated(
      List<BidOnTender> tenderBids) {
    return StreamTenderBidsUpdated(
      tenderBids,
    );
  }
}

/// @nodoc
const $AllTenderChatsEvent = _$AllTenderChatsEventTearOff();

/// @nodoc
mixin _$AllTenderChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Tender> tenders) streamTendersUpdated,
    required TResult Function(List<BidOnTender> tenderBids)
        streamTenderBidsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Tender> tenders)? streamTendersUpdated,
    TResult Function(List<BidOnTender> tenderBids)? streamTenderBidsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamTendersUpdated value) streamTendersUpdated,
    required TResult Function(StreamTenderBidsUpdated value)
        streamTenderBidsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamTendersUpdated value)? streamTendersUpdated,
    TResult Function(StreamTenderBidsUpdated value)? streamTenderBidsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTenderChatsEventCopyWith<$Res> {
  factory $AllTenderChatsEventCopyWith(
          AllTenderChatsEvent value, $Res Function(AllTenderChatsEvent) then) =
      _$AllTenderChatsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllTenderChatsEventCopyWithImpl<$Res>
    implements $AllTenderChatsEventCopyWith<$Res> {
  _$AllTenderChatsEventCopyWithImpl(this._value, this._then);

  final AllTenderChatsEvent _value;
  // ignore: unused_field
  final $Res Function(AllTenderChatsEvent) _then;
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
    extends _$AllTenderChatsEventCopyWithImpl<$Res>
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
    return 'AllTenderChatsEvent.streamChatRoomsUpdated(chatRooms: $chatRooms)';
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
    required TResult Function(List<Tender> tenders) streamTendersUpdated,
    required TResult Function(List<BidOnTender> tenderBids)
        streamTenderBidsUpdated,
  }) {
    return streamChatRoomsUpdated(chatRooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Tender> tenders)? streamTendersUpdated,
    TResult Function(List<BidOnTender> tenderBids)? streamTenderBidsUpdated,
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
    required TResult Function(StreamTendersUpdated value) streamTendersUpdated,
    required TResult Function(StreamTenderBidsUpdated value)
        streamTenderBidsUpdated,
  }) {
    return streamChatRoomsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamTendersUpdated value)? streamTendersUpdated,
    TResult Function(StreamTenderBidsUpdated value)? streamTenderBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamChatRoomsUpdated != null) {
      return streamChatRoomsUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamChatRoomsUpdated implements AllTenderChatsEvent {
  const factory StreamChatRoomsUpdated(List<ChatRoom> chatRooms) =
      _$StreamChatRoomsUpdated;

  List<ChatRoom> get chatRooms => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamChatRoomsUpdatedCopyWith<StreamChatRoomsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamTendersUpdatedCopyWith<$Res> {
  factory $StreamTendersUpdatedCopyWith(StreamTendersUpdated value,
          $Res Function(StreamTendersUpdated) then) =
      _$StreamTendersUpdatedCopyWithImpl<$Res>;
  $Res call({List<Tender> tenders});
}

/// @nodoc
class _$StreamTendersUpdatedCopyWithImpl<$Res>
    extends _$AllTenderChatsEventCopyWithImpl<$Res>
    implements $StreamTendersUpdatedCopyWith<$Res> {
  _$StreamTendersUpdatedCopyWithImpl(
      StreamTendersUpdated _value, $Res Function(StreamTendersUpdated) _then)
      : super(_value, (v) => _then(v as StreamTendersUpdated));

  @override
  StreamTendersUpdated get _value => super._value as StreamTendersUpdated;

  @override
  $Res call({
    Object? tenders = freezed,
  }) {
    return _then(StreamTendersUpdated(
      tenders == freezed
          ? _value.tenders
          : tenders // ignore: cast_nullable_to_non_nullable
              as List<Tender>,
    ));
  }
}

/// @nodoc

class _$StreamTendersUpdated implements StreamTendersUpdated {
  const _$StreamTendersUpdated(this.tenders);

  @override
  final List<Tender> tenders;

  @override
  String toString() {
    return 'AllTenderChatsEvent.streamTendersUpdated(tenders: $tenders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamTendersUpdated &&
            (identical(other.tenders, tenders) ||
                const DeepCollectionEquality().equals(other.tenders, tenders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tenders);

  @JsonKey(ignore: true)
  @override
  $StreamTendersUpdatedCopyWith<StreamTendersUpdated> get copyWith =>
      _$StreamTendersUpdatedCopyWithImpl<StreamTendersUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Tender> tenders) streamTendersUpdated,
    required TResult Function(List<BidOnTender> tenderBids)
        streamTenderBidsUpdated,
  }) {
    return streamTendersUpdated(tenders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Tender> tenders)? streamTendersUpdated,
    TResult Function(List<BidOnTender> tenderBids)? streamTenderBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamTendersUpdated != null) {
      return streamTendersUpdated(tenders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamTendersUpdated value) streamTendersUpdated,
    required TResult Function(StreamTenderBidsUpdated value)
        streamTenderBidsUpdated,
  }) {
    return streamTendersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamTendersUpdated value)? streamTendersUpdated,
    TResult Function(StreamTenderBidsUpdated value)? streamTenderBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamTendersUpdated != null) {
      return streamTendersUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamTendersUpdated implements AllTenderChatsEvent {
  const factory StreamTendersUpdated(List<Tender> tenders) =
      _$StreamTendersUpdated;

  List<Tender> get tenders => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamTendersUpdatedCopyWith<StreamTendersUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamTenderBidsUpdatedCopyWith<$Res> {
  factory $StreamTenderBidsUpdatedCopyWith(StreamTenderBidsUpdated value,
          $Res Function(StreamTenderBidsUpdated) then) =
      _$StreamTenderBidsUpdatedCopyWithImpl<$Res>;
  $Res call({List<BidOnTender> tenderBids});
}

/// @nodoc
class _$StreamTenderBidsUpdatedCopyWithImpl<$Res>
    extends _$AllTenderChatsEventCopyWithImpl<$Res>
    implements $StreamTenderBidsUpdatedCopyWith<$Res> {
  _$StreamTenderBidsUpdatedCopyWithImpl(StreamTenderBidsUpdated _value,
      $Res Function(StreamTenderBidsUpdated) _then)
      : super(_value, (v) => _then(v as StreamTenderBidsUpdated));

  @override
  StreamTenderBidsUpdated get _value => super._value as StreamTenderBidsUpdated;

  @override
  $Res call({
    Object? tenderBids = freezed,
  }) {
    return _then(StreamTenderBidsUpdated(
      tenderBids == freezed
          ? _value.tenderBids
          : tenderBids // ignore: cast_nullable_to_non_nullable
              as List<BidOnTender>,
    ));
  }
}

/// @nodoc

class _$StreamTenderBidsUpdated implements StreamTenderBidsUpdated {
  const _$StreamTenderBidsUpdated(this.tenderBids);

  @override
  final List<BidOnTender> tenderBids;

  @override
  String toString() {
    return 'AllTenderChatsEvent.streamTenderBidsUpdated(tenderBids: $tenderBids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamTenderBidsUpdated &&
            (identical(other.tenderBids, tenderBids) ||
                const DeepCollectionEquality()
                    .equals(other.tenderBids, tenderBids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tenderBids);

  @JsonKey(ignore: true)
  @override
  $StreamTenderBidsUpdatedCopyWith<StreamTenderBidsUpdated> get copyWith =>
      _$StreamTenderBidsUpdatedCopyWithImpl<StreamTenderBidsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Tender> tenders) streamTendersUpdated,
    required TResult Function(List<BidOnTender> tenderBids)
        streamTenderBidsUpdated,
  }) {
    return streamTenderBidsUpdated(tenderBids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Tender> tenders)? streamTendersUpdated,
    TResult Function(List<BidOnTender> tenderBids)? streamTenderBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamTenderBidsUpdated != null) {
      return streamTenderBidsUpdated(tenderBids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamTendersUpdated value) streamTendersUpdated,
    required TResult Function(StreamTenderBidsUpdated value)
        streamTenderBidsUpdated,
  }) {
    return streamTenderBidsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamTendersUpdated value)? streamTendersUpdated,
    TResult Function(StreamTenderBidsUpdated value)? streamTenderBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamTenderBidsUpdated != null) {
      return streamTenderBidsUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamTenderBidsUpdated implements AllTenderChatsEvent {
  const factory StreamTenderBidsUpdated(List<BidOnTender> tenderBids) =
      _$StreamTenderBidsUpdated;

  List<BidOnTender> get tenderBids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamTenderBidsUpdatedCopyWith<StreamTenderBidsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AllTenderChatsStateTearOff {
  const _$AllTenderChatsStateTearOff();

  _AllTenderChatsState call(
      {required Option<List<Tender>> tenders,
      required Option<List<BidOnTender>> tenderBids,
      required Option<List<ChatRoom>> chatRooms,
      required Either<Contractor, Developer> loggedInUser}) {
    return _AllTenderChatsState(
      tenders: tenders,
      tenderBids: tenderBids,
      chatRooms: chatRooms,
      loggedInUser: loggedInUser,
    );
  }
}

/// @nodoc
const $AllTenderChatsState = _$AllTenderChatsStateTearOff();

/// @nodoc
mixin _$AllTenderChatsState {
  Option<List<Tender>> get tenders => throw _privateConstructorUsedError;
  Option<List<BidOnTender>> get tenderBids =>
      throw _privateConstructorUsedError;
  Option<List<ChatRoom>> get chatRooms => throw _privateConstructorUsedError;
  Either<Contractor, Developer> get loggedInUser =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllTenderChatsStateCopyWith<AllTenderChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTenderChatsStateCopyWith<$Res> {
  factory $AllTenderChatsStateCopyWith(
          AllTenderChatsState value, $Res Function(AllTenderChatsState) then) =
      _$AllTenderChatsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<List<Tender>> tenders,
      Option<List<BidOnTender>> tenderBids,
      Option<List<ChatRoom>> chatRooms,
      Either<Contractor, Developer> loggedInUser});
}

/// @nodoc
class _$AllTenderChatsStateCopyWithImpl<$Res>
    implements $AllTenderChatsStateCopyWith<$Res> {
  _$AllTenderChatsStateCopyWithImpl(this._value, this._then);

  final AllTenderChatsState _value;
  // ignore: unused_field
  final $Res Function(AllTenderChatsState) _then;

  @override
  $Res call({
    Object? tenders = freezed,
    Object? tenderBids = freezed,
    Object? chatRooms = freezed,
    Object? loggedInUser = freezed,
  }) {
    return _then(_value.copyWith(
      tenders: tenders == freezed
          ? _value.tenders
          : tenders // ignore: cast_nullable_to_non_nullable
              as Option<List<Tender>>,
      tenderBids: tenderBids == freezed
          ? _value.tenderBids
          : tenderBids // ignore: cast_nullable_to_non_nullable
              as Option<List<BidOnTender>>,
      chatRooms: chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as Option<List<ChatRoom>>,
      loggedInUser: loggedInUser == freezed
          ? _value.loggedInUser
          : loggedInUser // ignore: cast_nullable_to_non_nullable
              as Either<Contractor, Developer>,
    ));
  }
}

/// @nodoc
abstract class _$AllTenderChatsStateCopyWith<$Res>
    implements $AllTenderChatsStateCopyWith<$Res> {
  factory _$AllTenderChatsStateCopyWith(_AllTenderChatsState value,
          $Res Function(_AllTenderChatsState) then) =
      __$AllTenderChatsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<List<Tender>> tenders,
      Option<List<BidOnTender>> tenderBids,
      Option<List<ChatRoom>> chatRooms,
      Either<Contractor, Developer> loggedInUser});
}

/// @nodoc
class __$AllTenderChatsStateCopyWithImpl<$Res>
    extends _$AllTenderChatsStateCopyWithImpl<$Res>
    implements _$AllTenderChatsStateCopyWith<$Res> {
  __$AllTenderChatsStateCopyWithImpl(
      _AllTenderChatsState _value, $Res Function(_AllTenderChatsState) _then)
      : super(_value, (v) => _then(v as _AllTenderChatsState));

  @override
  _AllTenderChatsState get _value => super._value as _AllTenderChatsState;

  @override
  $Res call({
    Object? tenders = freezed,
    Object? tenderBids = freezed,
    Object? chatRooms = freezed,
    Object? loggedInUser = freezed,
  }) {
    return _then(_AllTenderChatsState(
      tenders: tenders == freezed
          ? _value.tenders
          : tenders // ignore: cast_nullable_to_non_nullable
              as Option<List<Tender>>,
      tenderBids: tenderBids == freezed
          ? _value.tenderBids
          : tenderBids // ignore: cast_nullable_to_non_nullable
              as Option<List<BidOnTender>>,
      chatRooms: chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as Option<List<ChatRoom>>,
      loggedInUser: loggedInUser == freezed
          ? _value.loggedInUser
          : loggedInUser // ignore: cast_nullable_to_non_nullable
              as Either<Contractor, Developer>,
    ));
  }
}

/// @nodoc

class _$_AllTenderChatsState extends _AllTenderChatsState {
  const _$_AllTenderChatsState(
      {required this.tenders,
      required this.tenderBids,
      required this.chatRooms,
      required this.loggedInUser})
      : super._();

  @override
  final Option<List<Tender>> tenders;
  @override
  final Option<List<BidOnTender>> tenderBids;
  @override
  final Option<List<ChatRoom>> chatRooms;
  @override
  final Either<Contractor, Developer> loggedInUser;

  @override
  String toString() {
    return 'AllTenderChatsState(tenders: $tenders, tenderBids: $tenderBids, chatRooms: $chatRooms, loggedInUser: $loggedInUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllTenderChatsState &&
            (identical(other.tenders, tenders) ||
                const DeepCollectionEquality()
                    .equals(other.tenders, tenders)) &&
            (identical(other.tenderBids, tenderBids) ||
                const DeepCollectionEquality()
                    .equals(other.tenderBids, tenderBids)) &&
            (identical(other.chatRooms, chatRooms) ||
                const DeepCollectionEquality()
                    .equals(other.chatRooms, chatRooms)) &&
            (identical(other.loggedInUser, loggedInUser) ||
                const DeepCollectionEquality()
                    .equals(other.loggedInUser, loggedInUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tenders) ^
      const DeepCollectionEquality().hash(tenderBids) ^
      const DeepCollectionEquality().hash(chatRooms) ^
      const DeepCollectionEquality().hash(loggedInUser);

  @JsonKey(ignore: true)
  @override
  _$AllTenderChatsStateCopyWith<_AllTenderChatsState> get copyWith =>
      __$AllTenderChatsStateCopyWithImpl<_AllTenderChatsState>(
          this, _$identity);
}

abstract class _AllTenderChatsState extends AllTenderChatsState {
  const factory _AllTenderChatsState(
          {required Option<List<Tender>> tenders,
          required Option<List<BidOnTender>> tenderBids,
          required Option<List<ChatRoom>> chatRooms,
          required Either<Contractor, Developer> loggedInUser}) =
      _$_AllTenderChatsState;
  const _AllTenderChatsState._() : super._();

  @override
  Option<List<Tender>> get tenders => throw _privateConstructorUsedError;
  @override
  Option<List<BidOnTender>> get tenderBids =>
      throw _privateConstructorUsedError;
  @override
  Option<List<ChatRoom>> get chatRooms => throw _privateConstructorUsedError;
  @override
  Either<Contractor, Developer> get loggedInUser =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AllTenderChatsStateCopyWith<_AllTenderChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}
