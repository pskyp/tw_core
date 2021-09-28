// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joint_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JointChatEventTearOff {
  const _$JointChatEventTearOff();

  OpenTenderChatRoom openTenderChatRoom(
      {required Tender tender,
      required BidOnTender tenderBid,
      required ChatRoom? chatRoom}) {
    return OpenTenderChatRoom(
      tender: tender,
      tenderBid: tenderBid,
      chatRoom: chatRoom,
    );
  }

  OpenJobChatRoom openJobChatRoom(
      {required Job job, required Bid bid, required ChatRoom? chatRoom}) {
    return OpenJobChatRoom(
      job: job,
      bid: bid,
      chatRoom: chatRoom,
    );
  }
}

/// @nodoc
const $JointChatEvent = _$JointChatEventTearOff();

/// @nodoc
mixin _$JointChatEvent {
  ChatRoom? get chatRoom => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Tender tender, BidOnTender tenderBid, ChatRoom? chatRoom)
        openTenderChatRoom,
    required TResult Function(Job job, Bid bid, ChatRoom? chatRoom)
        openJobChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tender tender, BidOnTender tenderBid, ChatRoom? chatRoom)?
        openTenderChatRoom,
    TResult Function(Job job, Bid bid, ChatRoom? chatRoom)? openJobChatRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenTenderChatRoom value) openTenderChatRoom,
    required TResult Function(OpenJobChatRoom value) openJobChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenTenderChatRoom value)? openTenderChatRoom,
    TResult Function(OpenJobChatRoom value)? openJobChatRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JointChatEventCopyWith<JointChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JointChatEventCopyWith<$Res> {
  factory $JointChatEventCopyWith(
          JointChatEvent value, $Res Function(JointChatEvent) then) =
      _$JointChatEventCopyWithImpl<$Res>;
  $Res call({ChatRoom? chatRoom});
}

/// @nodoc
class _$JointChatEventCopyWithImpl<$Res>
    implements $JointChatEventCopyWith<$Res> {
  _$JointChatEventCopyWithImpl(this._value, this._then);

  final JointChatEvent _value;
  // ignore: unused_field
  final $Res Function(JointChatEvent) _then;

  @override
  $Res call({
    Object? chatRoom = freezed,
  }) {
    return _then(_value.copyWith(
      chatRoom: chatRoom == freezed
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoom?,
    ));
  }
}

/// @nodoc
abstract class $OpenTenderChatRoomCopyWith<$Res>
    implements $JointChatEventCopyWith<$Res> {
  factory $OpenTenderChatRoomCopyWith(
          OpenTenderChatRoom value, $Res Function(OpenTenderChatRoom) then) =
      _$OpenTenderChatRoomCopyWithImpl<$Res>;
  @override
  $Res call({Tender tender, BidOnTender tenderBid, ChatRoom? chatRoom});

  $TenderCopyWith<$Res> get tender;
}

/// @nodoc
class _$OpenTenderChatRoomCopyWithImpl<$Res>
    extends _$JointChatEventCopyWithImpl<$Res>
    implements $OpenTenderChatRoomCopyWith<$Res> {
  _$OpenTenderChatRoomCopyWithImpl(
      OpenTenderChatRoom _value, $Res Function(OpenTenderChatRoom) _then)
      : super(_value, (v) => _then(v as OpenTenderChatRoom));

  @override
  OpenTenderChatRoom get _value => super._value as OpenTenderChatRoom;

  @override
  $Res call({
    Object? tender = freezed,
    Object? tenderBid = freezed,
    Object? chatRoom = freezed,
  }) {
    return _then(OpenTenderChatRoom(
      tender: tender == freezed
          ? _value.tender
          : tender // ignore: cast_nullable_to_non_nullable
              as Tender,
      tenderBid: tenderBid == freezed
          ? _value.tenderBid
          : tenderBid // ignore: cast_nullable_to_non_nullable
              as BidOnTender,
      chatRoom: chatRoom == freezed
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoom?,
    ));
  }

  @override
  $TenderCopyWith<$Res> get tender {
    return $TenderCopyWith<$Res>(_value.tender, (value) {
      return _then(_value.copyWith(tender: value));
    });
  }
}

/// @nodoc

class _$OpenTenderChatRoom implements OpenTenderChatRoom {
  const _$OpenTenderChatRoom(
      {required this.tender, required this.tenderBid, required this.chatRoom});

  @override
  final Tender tender;
  @override
  final BidOnTender tenderBid;
  @override
  final ChatRoom? chatRoom;

  @override
  String toString() {
    return 'JointChatEvent.openTenderChatRoom(tender: $tender, tenderBid: $tenderBid, chatRoom: $chatRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenTenderChatRoom &&
            (identical(other.tender, tender) ||
                const DeepCollectionEquality().equals(other.tender, tender)) &&
            (identical(other.tenderBid, tenderBid) ||
                const DeepCollectionEquality()
                    .equals(other.tenderBid, tenderBid)) &&
            (identical(other.chatRoom, chatRoom) ||
                const DeepCollectionEquality()
                    .equals(other.chatRoom, chatRoom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tender) ^
      const DeepCollectionEquality().hash(tenderBid) ^
      const DeepCollectionEquality().hash(chatRoom);

  @JsonKey(ignore: true)
  @override
  $OpenTenderChatRoomCopyWith<OpenTenderChatRoom> get copyWith =>
      _$OpenTenderChatRoomCopyWithImpl<OpenTenderChatRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Tender tender, BidOnTender tenderBid, ChatRoom? chatRoom)
        openTenderChatRoom,
    required TResult Function(Job job, Bid bid, ChatRoom? chatRoom)
        openJobChatRoom,
  }) {
    return openTenderChatRoom(tender, tenderBid, chatRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tender tender, BidOnTender tenderBid, ChatRoom? chatRoom)?
        openTenderChatRoom,
    TResult Function(Job job, Bid bid, ChatRoom? chatRoom)? openJobChatRoom,
    required TResult orElse(),
  }) {
    if (openTenderChatRoom != null) {
      return openTenderChatRoom(tender, tenderBid, chatRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenTenderChatRoom value) openTenderChatRoom,
    required TResult Function(OpenJobChatRoom value) openJobChatRoom,
  }) {
    return openTenderChatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenTenderChatRoom value)? openTenderChatRoom,
    TResult Function(OpenJobChatRoom value)? openJobChatRoom,
    required TResult orElse(),
  }) {
    if (openTenderChatRoom != null) {
      return openTenderChatRoom(this);
    }
    return orElse();
  }
}

abstract class OpenTenderChatRoom implements JointChatEvent {
  const factory OpenTenderChatRoom(
      {required Tender tender,
      required BidOnTender tenderBid,
      required ChatRoom? chatRoom}) = _$OpenTenderChatRoom;

  Tender get tender => throw _privateConstructorUsedError;
  BidOnTender get tenderBid => throw _privateConstructorUsedError;
  @override
  ChatRoom? get chatRoom => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OpenTenderChatRoomCopyWith<OpenTenderChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenJobChatRoomCopyWith<$Res>
    implements $JointChatEventCopyWith<$Res> {
  factory $OpenJobChatRoomCopyWith(
          OpenJobChatRoom value, $Res Function(OpenJobChatRoom) then) =
      _$OpenJobChatRoomCopyWithImpl<$Res>;
  @override
  $Res call({Job job, Bid bid, ChatRoom? chatRoom});

  $JobCopyWith<$Res> get job;
}

/// @nodoc
class _$OpenJobChatRoomCopyWithImpl<$Res>
    extends _$JointChatEventCopyWithImpl<$Res>
    implements $OpenJobChatRoomCopyWith<$Res> {
  _$OpenJobChatRoomCopyWithImpl(
      OpenJobChatRoom _value, $Res Function(OpenJobChatRoom) _then)
      : super(_value, (v) => _then(v as OpenJobChatRoom));

  @override
  OpenJobChatRoom get _value => super._value as OpenJobChatRoom;

  @override
  $Res call({
    Object? job = freezed,
    Object? bid = freezed,
    Object? chatRoom = freezed,
  }) {
    return _then(OpenJobChatRoom(
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
      bid: bid == freezed
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as Bid,
      chatRoom: chatRoom == freezed
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoom?,
    ));
  }

  @override
  $JobCopyWith<$Res> get job {
    return $JobCopyWith<$Res>(_value.job, (value) {
      return _then(_value.copyWith(job: value));
    });
  }
}

/// @nodoc

class _$OpenJobChatRoom implements OpenJobChatRoom {
  const _$OpenJobChatRoom(
      {required this.job, required this.bid, required this.chatRoom});

  @override
  final Job job;
  @override
  final Bid bid;
  @override
  final ChatRoom? chatRoom;

  @override
  String toString() {
    return 'JointChatEvent.openJobChatRoom(job: $job, bid: $bid, chatRoom: $chatRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenJobChatRoom &&
            (identical(other.job, job) ||
                const DeepCollectionEquality().equals(other.job, job)) &&
            (identical(other.bid, bid) ||
                const DeepCollectionEquality().equals(other.bid, bid)) &&
            (identical(other.chatRoom, chatRoom) ||
                const DeepCollectionEquality()
                    .equals(other.chatRoom, chatRoom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(job) ^
      const DeepCollectionEquality().hash(bid) ^
      const DeepCollectionEquality().hash(chatRoom);

  @JsonKey(ignore: true)
  @override
  $OpenJobChatRoomCopyWith<OpenJobChatRoom> get copyWith =>
      _$OpenJobChatRoomCopyWithImpl<OpenJobChatRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Tender tender, BidOnTender tenderBid, ChatRoom? chatRoom)
        openTenderChatRoom,
    required TResult Function(Job job, Bid bid, ChatRoom? chatRoom)
        openJobChatRoom,
  }) {
    return openJobChatRoom(job, bid, chatRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tender tender, BidOnTender tenderBid, ChatRoom? chatRoom)?
        openTenderChatRoom,
    TResult Function(Job job, Bid bid, ChatRoom? chatRoom)? openJobChatRoom,
    required TResult orElse(),
  }) {
    if (openJobChatRoom != null) {
      return openJobChatRoom(job, bid, chatRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenTenderChatRoom value) openTenderChatRoom,
    required TResult Function(OpenJobChatRoom value) openJobChatRoom,
  }) {
    return openJobChatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenTenderChatRoom value)? openTenderChatRoom,
    TResult Function(OpenJobChatRoom value)? openJobChatRoom,
    required TResult orElse(),
  }) {
    if (openJobChatRoom != null) {
      return openJobChatRoom(this);
    }
    return orElse();
  }
}

abstract class OpenJobChatRoom implements JointChatEvent {
  const factory OpenJobChatRoom(
      {required Job job,
      required Bid bid,
      required ChatRoom? chatRoom}) = _$OpenJobChatRoom;

  Job get job => throw _privateConstructorUsedError;
  Bid get bid => throw _privateConstructorUsedError;
  @override
  ChatRoom? get chatRoom => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OpenJobChatRoomCopyWith<OpenJobChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
