// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) {
  return _ChatRoom.fromJson(json);
}

/// @nodoc
class _$ChatRoomTearOff {
  const _$ChatRoomTearOff();

  _ChatRoom call(
      {required String chatRoomId,
      required BidIdentifier bidIdentifier,
      required List<String> participantUIDs,
      required ChatItem? lastChatItem}) {
    return _ChatRoom(
      chatRoomId: chatRoomId,
      bidIdentifier: bidIdentifier,
      participantUIDs: participantUIDs,
      lastChatItem: lastChatItem,
    );
  }

  ChatRoom fromJson(Map<String, Object> json) {
    return ChatRoom.fromJson(json);
  }
}

/// @nodoc
const $ChatRoom = _$ChatRoomTearOff();

/// @nodoc
mixin _$ChatRoom {
  String get chatRoomId => throw _privateConstructorUsedError;
  BidIdentifier get bidIdentifier => throw _privateConstructorUsedError;
  List<String> get participantUIDs => throw _privateConstructorUsedError;
  ChatItem? get lastChatItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res>;
  $Res call(
      {String chatRoomId,
      BidIdentifier bidIdentifier,
      List<String> participantUIDs,
      ChatItem? lastChatItem});

  $BidIdentifierCopyWith<$Res> get bidIdentifier;
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res> implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  final ChatRoom _value;
  // ignore: unused_field
  final $Res Function(ChatRoom) _then;

  @override
  $Res call({
    Object? chatRoomId = freezed,
    Object? bidIdentifier = freezed,
    Object? participantUIDs = freezed,
    Object? lastChatItem = freezed,
  }) {
    return _then(_value.copyWith(
      chatRoomId: chatRoomId == freezed
          ? _value.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      participantUIDs: participantUIDs == freezed
          ? _value.participantUIDs
          : participantUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastChatItem: lastChatItem == freezed
          ? _value.lastChatItem
          : lastChatItem // ignore: cast_nullable_to_non_nullable
              as ChatItem?,
    ));
  }

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier {
    return $BidIdentifierCopyWith<$Res>(_value.bidIdentifier, (value) {
      return _then(_value.copyWith(bidIdentifier: value));
    });
  }
}

/// @nodoc
abstract class _$ChatRoomCopyWith<$Res> implements $ChatRoomCopyWith<$Res> {
  factory _$ChatRoomCopyWith(_ChatRoom value, $Res Function(_ChatRoom) then) =
      __$ChatRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {String chatRoomId,
      BidIdentifier bidIdentifier,
      List<String> participantUIDs,
      ChatItem? lastChatItem});

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier;
}

/// @nodoc
class __$ChatRoomCopyWithImpl<$Res> extends _$ChatRoomCopyWithImpl<$Res>
    implements _$ChatRoomCopyWith<$Res> {
  __$ChatRoomCopyWithImpl(_ChatRoom _value, $Res Function(_ChatRoom) _then)
      : super(_value, (v) => _then(v as _ChatRoom));

  @override
  _ChatRoom get _value => super._value as _ChatRoom;

  @override
  $Res call({
    Object? chatRoomId = freezed,
    Object? bidIdentifier = freezed,
    Object? participantUIDs = freezed,
    Object? lastChatItem = freezed,
  }) {
    return _then(_ChatRoom(
      chatRoomId: chatRoomId == freezed
          ? _value.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      participantUIDs: participantUIDs == freezed
          ? _value.participantUIDs
          : participantUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastChatItem: lastChatItem == freezed
          ? _value.lastChatItem
          : lastChatItem // ignore: cast_nullable_to_non_nullable
              as ChatItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRoom implements _ChatRoom {
  const _$_ChatRoom(
      {required this.chatRoomId,
      required this.bidIdentifier,
      required this.participantUIDs,
      required this.lastChatItem});

  factory _$_ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRoomFromJson(json);

  @override
  final String chatRoomId;
  @override
  final BidIdentifier bidIdentifier;
  @override
  final List<String> participantUIDs;
  @override
  final ChatItem? lastChatItem;

  @override
  String toString() {
    return 'ChatRoom(chatRoomId: $chatRoomId, bidIdentifier: $bidIdentifier, participantUIDs: $participantUIDs, lastChatItem: $lastChatItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatRoom &&
            (identical(other.chatRoomId, chatRoomId) ||
                const DeepCollectionEquality()
                    .equals(other.chatRoomId, chatRoomId)) &&
            (identical(other.bidIdentifier, bidIdentifier) ||
                const DeepCollectionEquality()
                    .equals(other.bidIdentifier, bidIdentifier)) &&
            (identical(other.participantUIDs, participantUIDs) ||
                const DeepCollectionEquality()
                    .equals(other.participantUIDs, participantUIDs)) &&
            (identical(other.lastChatItem, lastChatItem) ||
                const DeepCollectionEquality()
                    .equals(other.lastChatItem, lastChatItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chatRoomId) ^
      const DeepCollectionEquality().hash(bidIdentifier) ^
      const DeepCollectionEquality().hash(participantUIDs) ^
      const DeepCollectionEquality().hash(lastChatItem);

  @JsonKey(ignore: true)
  @override
  _$ChatRoomCopyWith<_ChatRoom> get copyWith =>
      __$ChatRoomCopyWithImpl<_ChatRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRoomToJson(this);
  }
}

abstract class _ChatRoom implements ChatRoom {
  const factory _ChatRoom(
      {required String chatRoomId,
      required BidIdentifier bidIdentifier,
      required List<String> participantUIDs,
      required ChatItem? lastChatItem}) = _$_ChatRoom;

  factory _ChatRoom.fromJson(Map<String, dynamic> json) = _$_ChatRoom.fromJson;

  @override
  String get chatRoomId => throw _privateConstructorUsedError;
  @override
  BidIdentifier get bidIdentifier => throw _privateConstructorUsedError;
  @override
  List<String> get participantUIDs => throw _privateConstructorUsedError;
  @override
  ChatItem? get lastChatItem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatRoomCopyWith<_ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
