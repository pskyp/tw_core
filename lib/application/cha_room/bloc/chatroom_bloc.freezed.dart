// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chatroom_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatroomEventTearOff {
  const _$ChatroomEventTearOff();

  RoomOpenedWithNullChatRoom roomOpenedWithNullChatRoom() {
    return const RoomOpenedWithNullChatRoom();
  }

  ChatRoomsStreamUpdate chatRoomsStreamUpdate(
      {required List<ChatRoom> chatRooms}) {
    return ChatRoomsStreamUpdate(
      chatRooms: chatRooms,
    );
  }

  MessageSeen messageSeen({required ChatItem chatItem}) {
    return MessageSeen(
      chatItem: chatItem,
    );
  }

  MessagesStreamUpdated messagesStreamUpdated(
      {required List<ChatItem>? chatItems}) {
    return MessagesStreamUpdated(
      chatItems: chatItems,
    );
  }

  SendMessagePressed sendMessagePressed(String text) {
    return SendMessagePressed(
      text,
    );
  }
}

/// @nodoc
const $ChatroomEvent = _$ChatroomEventTearOff();

/// @nodoc
mixin _$ChatroomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() roomOpenedWithNullChatRoom,
    required TResult Function(List<ChatRoom> chatRooms) chatRoomsStreamUpdate,
    required TResult Function(ChatItem chatItem) messageSeen,
    required TResult Function(List<ChatItem>? chatItems) messagesStreamUpdated,
    required TResult Function(String text) sendMessagePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roomOpenedWithNullChatRoom,
    TResult Function(List<ChatRoom> chatRooms)? chatRoomsStreamUpdate,
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomOpenedWithNullChatRoom value)
        roomOpenedWithNullChatRoom,
    required TResult Function(ChatRoomsStreamUpdate value)
        chatRoomsStreamUpdate,
    required TResult Function(MessageSeen value) messageSeen,
    required TResult Function(MessagesStreamUpdated value)
        messagesStreamUpdated,
    required TResult Function(SendMessagePressed value) sendMessagePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomOpenedWithNullChatRoom value)?
        roomOpenedWithNullChatRoom,
    TResult Function(ChatRoomsStreamUpdate value)? chatRoomsStreamUpdate,
    TResult Function(MessageSeen value)? messageSeen,
    TResult Function(MessagesStreamUpdated value)? messagesStreamUpdated,
    TResult Function(SendMessagePressed value)? sendMessagePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatroomEventCopyWith<$Res> {
  factory $ChatroomEventCopyWith(
          ChatroomEvent value, $Res Function(ChatroomEvent) then) =
      _$ChatroomEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatroomEventCopyWithImpl<$Res>
    implements $ChatroomEventCopyWith<$Res> {
  _$ChatroomEventCopyWithImpl(this._value, this._then);

  final ChatroomEvent _value;
  // ignore: unused_field
  final $Res Function(ChatroomEvent) _then;
}

/// @nodoc
abstract class $RoomOpenedWithNullChatRoomCopyWith<$Res> {
  factory $RoomOpenedWithNullChatRoomCopyWith(RoomOpenedWithNullChatRoom value,
          $Res Function(RoomOpenedWithNullChatRoom) then) =
      _$RoomOpenedWithNullChatRoomCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomOpenedWithNullChatRoomCopyWithImpl<$Res>
    extends _$ChatroomEventCopyWithImpl<$Res>
    implements $RoomOpenedWithNullChatRoomCopyWith<$Res> {
  _$RoomOpenedWithNullChatRoomCopyWithImpl(RoomOpenedWithNullChatRoom _value,
      $Res Function(RoomOpenedWithNullChatRoom) _then)
      : super(_value, (v) => _then(v as RoomOpenedWithNullChatRoom));

  @override
  RoomOpenedWithNullChatRoom get _value =>
      super._value as RoomOpenedWithNullChatRoom;
}

/// @nodoc

class _$RoomOpenedWithNullChatRoom implements RoomOpenedWithNullChatRoom {
  const _$RoomOpenedWithNullChatRoom();

  @override
  String toString() {
    return 'ChatroomEvent.roomOpenedWithNullChatRoom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RoomOpenedWithNullChatRoom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() roomOpenedWithNullChatRoom,
    required TResult Function(List<ChatRoom> chatRooms) chatRoomsStreamUpdate,
    required TResult Function(ChatItem chatItem) messageSeen,
    required TResult Function(List<ChatItem>? chatItems) messagesStreamUpdated,
    required TResult Function(String text) sendMessagePressed,
  }) {
    return roomOpenedWithNullChatRoom();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roomOpenedWithNullChatRoom,
    TResult Function(List<ChatRoom> chatRooms)? chatRoomsStreamUpdate,
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
    required TResult orElse(),
  }) {
    if (roomOpenedWithNullChatRoom != null) {
      return roomOpenedWithNullChatRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomOpenedWithNullChatRoom value)
        roomOpenedWithNullChatRoom,
    required TResult Function(ChatRoomsStreamUpdate value)
        chatRoomsStreamUpdate,
    required TResult Function(MessageSeen value) messageSeen,
    required TResult Function(MessagesStreamUpdated value)
        messagesStreamUpdated,
    required TResult Function(SendMessagePressed value) sendMessagePressed,
  }) {
    return roomOpenedWithNullChatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomOpenedWithNullChatRoom value)?
        roomOpenedWithNullChatRoom,
    TResult Function(ChatRoomsStreamUpdate value)? chatRoomsStreamUpdate,
    TResult Function(MessageSeen value)? messageSeen,
    TResult Function(MessagesStreamUpdated value)? messagesStreamUpdated,
    TResult Function(SendMessagePressed value)? sendMessagePressed,
    required TResult orElse(),
  }) {
    if (roomOpenedWithNullChatRoom != null) {
      return roomOpenedWithNullChatRoom(this);
    }
    return orElse();
  }
}

abstract class RoomOpenedWithNullChatRoom implements ChatroomEvent {
  const factory RoomOpenedWithNullChatRoom() = _$RoomOpenedWithNullChatRoom;
}

/// @nodoc
abstract class $ChatRoomsStreamUpdateCopyWith<$Res> {
  factory $ChatRoomsStreamUpdateCopyWith(ChatRoomsStreamUpdate value,
          $Res Function(ChatRoomsStreamUpdate) then) =
      _$ChatRoomsStreamUpdateCopyWithImpl<$Res>;
  $Res call({List<ChatRoom> chatRooms});
}

/// @nodoc
class _$ChatRoomsStreamUpdateCopyWithImpl<$Res>
    extends _$ChatroomEventCopyWithImpl<$Res>
    implements $ChatRoomsStreamUpdateCopyWith<$Res> {
  _$ChatRoomsStreamUpdateCopyWithImpl(
      ChatRoomsStreamUpdate _value, $Res Function(ChatRoomsStreamUpdate) _then)
      : super(_value, (v) => _then(v as ChatRoomsStreamUpdate));

  @override
  ChatRoomsStreamUpdate get _value => super._value as ChatRoomsStreamUpdate;

  @override
  $Res call({
    Object? chatRooms = freezed,
  }) {
    return _then(ChatRoomsStreamUpdate(
      chatRooms: chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as List<ChatRoom>,
    ));
  }
}

/// @nodoc

class _$ChatRoomsStreamUpdate implements ChatRoomsStreamUpdate {
  const _$ChatRoomsStreamUpdate({required this.chatRooms});

  @override
  final List<ChatRoom> chatRooms;

  @override
  String toString() {
    return 'ChatroomEvent.chatRoomsStreamUpdate(chatRooms: $chatRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChatRoomsStreamUpdate &&
            (identical(other.chatRooms, chatRooms) ||
                const DeepCollectionEquality()
                    .equals(other.chatRooms, chatRooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatRooms);

  @JsonKey(ignore: true)
  @override
  $ChatRoomsStreamUpdateCopyWith<ChatRoomsStreamUpdate> get copyWith =>
      _$ChatRoomsStreamUpdateCopyWithImpl<ChatRoomsStreamUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() roomOpenedWithNullChatRoom,
    required TResult Function(List<ChatRoom> chatRooms) chatRoomsStreamUpdate,
    required TResult Function(ChatItem chatItem) messageSeen,
    required TResult Function(List<ChatItem>? chatItems) messagesStreamUpdated,
    required TResult Function(String text) sendMessagePressed,
  }) {
    return chatRoomsStreamUpdate(chatRooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roomOpenedWithNullChatRoom,
    TResult Function(List<ChatRoom> chatRooms)? chatRoomsStreamUpdate,
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
    required TResult orElse(),
  }) {
    if (chatRoomsStreamUpdate != null) {
      return chatRoomsStreamUpdate(chatRooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomOpenedWithNullChatRoom value)
        roomOpenedWithNullChatRoom,
    required TResult Function(ChatRoomsStreamUpdate value)
        chatRoomsStreamUpdate,
    required TResult Function(MessageSeen value) messageSeen,
    required TResult Function(MessagesStreamUpdated value)
        messagesStreamUpdated,
    required TResult Function(SendMessagePressed value) sendMessagePressed,
  }) {
    return chatRoomsStreamUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomOpenedWithNullChatRoom value)?
        roomOpenedWithNullChatRoom,
    TResult Function(ChatRoomsStreamUpdate value)? chatRoomsStreamUpdate,
    TResult Function(MessageSeen value)? messageSeen,
    TResult Function(MessagesStreamUpdated value)? messagesStreamUpdated,
    TResult Function(SendMessagePressed value)? sendMessagePressed,
    required TResult orElse(),
  }) {
    if (chatRoomsStreamUpdate != null) {
      return chatRoomsStreamUpdate(this);
    }
    return orElse();
  }
}

abstract class ChatRoomsStreamUpdate implements ChatroomEvent {
  const factory ChatRoomsStreamUpdate({required List<ChatRoom> chatRooms}) =
      _$ChatRoomsStreamUpdate;

  List<ChatRoom> get chatRooms => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomsStreamUpdateCopyWith<ChatRoomsStreamUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSeenCopyWith<$Res> {
  factory $MessageSeenCopyWith(
          MessageSeen value, $Res Function(MessageSeen) then) =
      _$MessageSeenCopyWithImpl<$Res>;
  $Res call({ChatItem chatItem});
}

/// @nodoc
class _$MessageSeenCopyWithImpl<$Res> extends _$ChatroomEventCopyWithImpl<$Res>
    implements $MessageSeenCopyWith<$Res> {
  _$MessageSeenCopyWithImpl(
      MessageSeen _value, $Res Function(MessageSeen) _then)
      : super(_value, (v) => _then(v as MessageSeen));

  @override
  MessageSeen get _value => super._value as MessageSeen;

  @override
  $Res call({
    Object? chatItem = freezed,
  }) {
    return _then(MessageSeen(
      chatItem: chatItem == freezed
          ? _value.chatItem
          : chatItem // ignore: cast_nullable_to_non_nullable
              as ChatItem,
    ));
  }
}

/// @nodoc

class _$MessageSeen implements MessageSeen {
  const _$MessageSeen({required this.chatItem});

  @override
  final ChatItem chatItem;

  @override
  String toString() {
    return 'ChatroomEvent.messageSeen(chatItem: $chatItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageSeen &&
            (identical(other.chatItem, chatItem) ||
                const DeepCollectionEquality()
                    .equals(other.chatItem, chatItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatItem);

  @JsonKey(ignore: true)
  @override
  $MessageSeenCopyWith<MessageSeen> get copyWith =>
      _$MessageSeenCopyWithImpl<MessageSeen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() roomOpenedWithNullChatRoom,
    required TResult Function(List<ChatRoom> chatRooms) chatRoomsStreamUpdate,
    required TResult Function(ChatItem chatItem) messageSeen,
    required TResult Function(List<ChatItem>? chatItems) messagesStreamUpdated,
    required TResult Function(String text) sendMessagePressed,
  }) {
    return messageSeen(chatItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roomOpenedWithNullChatRoom,
    TResult Function(List<ChatRoom> chatRooms)? chatRoomsStreamUpdate,
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
    required TResult orElse(),
  }) {
    if (messageSeen != null) {
      return messageSeen(chatItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomOpenedWithNullChatRoom value)
        roomOpenedWithNullChatRoom,
    required TResult Function(ChatRoomsStreamUpdate value)
        chatRoomsStreamUpdate,
    required TResult Function(MessageSeen value) messageSeen,
    required TResult Function(MessagesStreamUpdated value)
        messagesStreamUpdated,
    required TResult Function(SendMessagePressed value) sendMessagePressed,
  }) {
    return messageSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomOpenedWithNullChatRoom value)?
        roomOpenedWithNullChatRoom,
    TResult Function(ChatRoomsStreamUpdate value)? chatRoomsStreamUpdate,
    TResult Function(MessageSeen value)? messageSeen,
    TResult Function(MessagesStreamUpdated value)? messagesStreamUpdated,
    TResult Function(SendMessagePressed value)? sendMessagePressed,
    required TResult orElse(),
  }) {
    if (messageSeen != null) {
      return messageSeen(this);
    }
    return orElse();
  }
}

abstract class MessageSeen implements ChatroomEvent {
  const factory MessageSeen({required ChatItem chatItem}) = _$MessageSeen;

  ChatItem get chatItem => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageSeenCopyWith<MessageSeen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesStreamUpdatedCopyWith<$Res> {
  factory $MessagesStreamUpdatedCopyWith(MessagesStreamUpdated value,
          $Res Function(MessagesStreamUpdated) then) =
      _$MessagesStreamUpdatedCopyWithImpl<$Res>;
  $Res call({List<ChatItem>? chatItems});
}

/// @nodoc
class _$MessagesStreamUpdatedCopyWithImpl<$Res>
    extends _$ChatroomEventCopyWithImpl<$Res>
    implements $MessagesStreamUpdatedCopyWith<$Res> {
  _$MessagesStreamUpdatedCopyWithImpl(
      MessagesStreamUpdated _value, $Res Function(MessagesStreamUpdated) _then)
      : super(_value, (v) => _then(v as MessagesStreamUpdated));

  @override
  MessagesStreamUpdated get _value => super._value as MessagesStreamUpdated;

  @override
  $Res call({
    Object? chatItems = freezed,
  }) {
    return _then(MessagesStreamUpdated(
      chatItems: chatItems == freezed
          ? _value.chatItems
          : chatItems // ignore: cast_nullable_to_non_nullable
              as List<ChatItem>?,
    ));
  }
}

/// @nodoc

class _$MessagesStreamUpdated implements MessagesStreamUpdated {
  const _$MessagesStreamUpdated({required this.chatItems});

  @override
  final List<ChatItem>? chatItems;

  @override
  String toString() {
    return 'ChatroomEvent.messagesStreamUpdated(chatItems: $chatItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessagesStreamUpdated &&
            (identical(other.chatItems, chatItems) ||
                const DeepCollectionEquality()
                    .equals(other.chatItems, chatItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatItems);

  @JsonKey(ignore: true)
  @override
  $MessagesStreamUpdatedCopyWith<MessagesStreamUpdated> get copyWith =>
      _$MessagesStreamUpdatedCopyWithImpl<MessagesStreamUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() roomOpenedWithNullChatRoom,
    required TResult Function(List<ChatRoom> chatRooms) chatRoomsStreamUpdate,
    required TResult Function(ChatItem chatItem) messageSeen,
    required TResult Function(List<ChatItem>? chatItems) messagesStreamUpdated,
    required TResult Function(String text) sendMessagePressed,
  }) {
    return messagesStreamUpdated(chatItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roomOpenedWithNullChatRoom,
    TResult Function(List<ChatRoom> chatRooms)? chatRoomsStreamUpdate,
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
    required TResult orElse(),
  }) {
    if (messagesStreamUpdated != null) {
      return messagesStreamUpdated(chatItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomOpenedWithNullChatRoom value)
        roomOpenedWithNullChatRoom,
    required TResult Function(ChatRoomsStreamUpdate value)
        chatRoomsStreamUpdate,
    required TResult Function(MessageSeen value) messageSeen,
    required TResult Function(MessagesStreamUpdated value)
        messagesStreamUpdated,
    required TResult Function(SendMessagePressed value) sendMessagePressed,
  }) {
    return messagesStreamUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomOpenedWithNullChatRoom value)?
        roomOpenedWithNullChatRoom,
    TResult Function(ChatRoomsStreamUpdate value)? chatRoomsStreamUpdate,
    TResult Function(MessageSeen value)? messageSeen,
    TResult Function(MessagesStreamUpdated value)? messagesStreamUpdated,
    TResult Function(SendMessagePressed value)? sendMessagePressed,
    required TResult orElse(),
  }) {
    if (messagesStreamUpdated != null) {
      return messagesStreamUpdated(this);
    }
    return orElse();
  }
}

abstract class MessagesStreamUpdated implements ChatroomEvent {
  const factory MessagesStreamUpdated({required List<ChatItem>? chatItems}) =
      _$MessagesStreamUpdated;

  List<ChatItem>? get chatItems => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesStreamUpdatedCopyWith<MessagesStreamUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessagePressedCopyWith<$Res> {
  factory $SendMessagePressedCopyWith(
          SendMessagePressed value, $Res Function(SendMessagePressed) then) =
      _$SendMessagePressedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$SendMessagePressedCopyWithImpl<$Res>
    extends _$ChatroomEventCopyWithImpl<$Res>
    implements $SendMessagePressedCopyWith<$Res> {
  _$SendMessagePressedCopyWithImpl(
      SendMessagePressed _value, $Res Function(SendMessagePressed) _then)
      : super(_value, (v) => _then(v as SendMessagePressed));

  @override
  SendMessagePressed get _value => super._value as SendMessagePressed;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(SendMessagePressed(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessagePressed implements SendMessagePressed {
  const _$SendMessagePressed(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChatroomEvent.sendMessagePressed(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendMessagePressed &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $SendMessagePressedCopyWith<SendMessagePressed> get copyWith =>
      _$SendMessagePressedCopyWithImpl<SendMessagePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() roomOpenedWithNullChatRoom,
    required TResult Function(List<ChatRoom> chatRooms) chatRoomsStreamUpdate,
    required TResult Function(ChatItem chatItem) messageSeen,
    required TResult Function(List<ChatItem>? chatItems) messagesStreamUpdated,
    required TResult Function(String text) sendMessagePressed,
  }) {
    return sendMessagePressed(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roomOpenedWithNullChatRoom,
    TResult Function(List<ChatRoom> chatRooms)? chatRoomsStreamUpdate,
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
    required TResult orElse(),
  }) {
    if (sendMessagePressed != null) {
      return sendMessagePressed(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomOpenedWithNullChatRoom value)
        roomOpenedWithNullChatRoom,
    required TResult Function(ChatRoomsStreamUpdate value)
        chatRoomsStreamUpdate,
    required TResult Function(MessageSeen value) messageSeen,
    required TResult Function(MessagesStreamUpdated value)
        messagesStreamUpdated,
    required TResult Function(SendMessagePressed value) sendMessagePressed,
  }) {
    return sendMessagePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomOpenedWithNullChatRoom value)?
        roomOpenedWithNullChatRoom,
    TResult Function(ChatRoomsStreamUpdate value)? chatRoomsStreamUpdate,
    TResult Function(MessageSeen value)? messageSeen,
    TResult Function(MessagesStreamUpdated value)? messagesStreamUpdated,
    TResult Function(SendMessagePressed value)? sendMessagePressed,
    required TResult orElse(),
  }) {
    if (sendMessagePressed != null) {
      return sendMessagePressed(this);
    }
    return orElse();
  }
}

abstract class SendMessagePressed implements ChatroomEvent {
  const factory SendMessagePressed(String text) = _$SendMessagePressed;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessagePressedCopyWith<SendMessagePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatroomStateTearOff {
  const _$ChatroomStateTearOff();

  _ChatroomState call(
      {required ChatType type,
      required ChatRoom? chatRoom,
      required Either<Job, Tender> work,
      required Either<Bid, BidOnTender> workBid,
      required Option<List<ChatItem>> chatItems}) {
    return _ChatroomState(
      type: type,
      chatRoom: chatRoom,
      work: work,
      workBid: workBid,
      chatItems: chatItems,
    );
  }
}

/// @nodoc
const $ChatroomState = _$ChatroomStateTearOff();

/// @nodoc
mixin _$ChatroomState {
  ChatType get type => throw _privateConstructorUsedError;
  ChatRoom? get chatRoom => throw _privateConstructorUsedError;
  Either<Job, Tender> get work => throw _privateConstructorUsedError;
  Either<Bid, BidOnTender> get workBid => throw _privateConstructorUsedError;
  Option<List<ChatItem>> get chatItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatroomStateCopyWith<ChatroomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatroomStateCopyWith<$Res> {
  factory $ChatroomStateCopyWith(
          ChatroomState value, $Res Function(ChatroomState) then) =
      _$ChatroomStateCopyWithImpl<$Res>;
  $Res call(
      {ChatType type,
      ChatRoom? chatRoom,
      Either<Job, Tender> work,
      Either<Bid, BidOnTender> workBid,
      Option<List<ChatItem>> chatItems});
}

/// @nodoc
class _$ChatroomStateCopyWithImpl<$Res>
    implements $ChatroomStateCopyWith<$Res> {
  _$ChatroomStateCopyWithImpl(this._value, this._then);

  final ChatroomState _value;
  // ignore: unused_field
  final $Res Function(ChatroomState) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? chatRoom = freezed,
    Object? work = freezed,
    Object? workBid = freezed,
    Object? chatItems = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChatType,
      chatRoom: chatRoom == freezed
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoom?,
      work: work == freezed
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Either<Job, Tender>,
      workBid: workBid == freezed
          ? _value.workBid
          : workBid // ignore: cast_nullable_to_non_nullable
              as Either<Bid, BidOnTender>,
      chatItems: chatItems == freezed
          ? _value.chatItems
          : chatItems // ignore: cast_nullable_to_non_nullable
              as Option<List<ChatItem>>,
    ));
  }
}

/// @nodoc
abstract class _$ChatroomStateCopyWith<$Res>
    implements $ChatroomStateCopyWith<$Res> {
  factory _$ChatroomStateCopyWith(
          _ChatroomState value, $Res Function(_ChatroomState) then) =
      __$ChatroomStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ChatType type,
      ChatRoom? chatRoom,
      Either<Job, Tender> work,
      Either<Bid, BidOnTender> workBid,
      Option<List<ChatItem>> chatItems});
}

/// @nodoc
class __$ChatroomStateCopyWithImpl<$Res>
    extends _$ChatroomStateCopyWithImpl<$Res>
    implements _$ChatroomStateCopyWith<$Res> {
  __$ChatroomStateCopyWithImpl(
      _ChatroomState _value, $Res Function(_ChatroomState) _then)
      : super(_value, (v) => _then(v as _ChatroomState));

  @override
  _ChatroomState get _value => super._value as _ChatroomState;

  @override
  $Res call({
    Object? type = freezed,
    Object? chatRoom = freezed,
    Object? work = freezed,
    Object? workBid = freezed,
    Object? chatItems = freezed,
  }) {
    return _then(_ChatroomState(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChatType,
      chatRoom: chatRoom == freezed
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoom?,
      work: work == freezed
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Either<Job, Tender>,
      workBid: workBid == freezed
          ? _value.workBid
          : workBid // ignore: cast_nullable_to_non_nullable
              as Either<Bid, BidOnTender>,
      chatItems: chatItems == freezed
          ? _value.chatItems
          : chatItems // ignore: cast_nullable_to_non_nullable
              as Option<List<ChatItem>>,
    ));
  }
}

/// @nodoc

class _$_ChatroomState extends _ChatroomState {
  const _$_ChatroomState(
      {required this.type,
      required this.chatRoom,
      required this.work,
      required this.workBid,
      required this.chatItems})
      : super._();

  @override
  final ChatType type;
  @override
  final ChatRoom? chatRoom;
  @override
  final Either<Job, Tender> work;
  @override
  final Either<Bid, BidOnTender> workBid;
  @override
  final Option<List<ChatItem>> chatItems;

  @override
  String toString() {
    return 'ChatroomState(type: $type, chatRoom: $chatRoom, work: $work, workBid: $workBid, chatItems: $chatItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatroomState &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.chatRoom, chatRoom) ||
                const DeepCollectionEquality()
                    .equals(other.chatRoom, chatRoom)) &&
            (identical(other.work, work) ||
                const DeepCollectionEquality().equals(other.work, work)) &&
            (identical(other.workBid, workBid) ||
                const DeepCollectionEquality()
                    .equals(other.workBid, workBid)) &&
            (identical(other.chatItems, chatItems) ||
                const DeepCollectionEquality()
                    .equals(other.chatItems, chatItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(chatRoom) ^
      const DeepCollectionEquality().hash(work) ^
      const DeepCollectionEquality().hash(workBid) ^
      const DeepCollectionEquality().hash(chatItems);

  @JsonKey(ignore: true)
  @override
  _$ChatroomStateCopyWith<_ChatroomState> get copyWith =>
      __$ChatroomStateCopyWithImpl<_ChatroomState>(this, _$identity);
}

abstract class _ChatroomState extends ChatroomState {
  const factory _ChatroomState(
      {required ChatType type,
      required ChatRoom? chatRoom,
      required Either<Job, Tender> work,
      required Either<Bid, BidOnTender> workBid,
      required Option<List<ChatItem>> chatItems}) = _$_ChatroomState;
  const _ChatroomState._() : super._();

  @override
  ChatType get type => throw _privateConstructorUsedError;
  @override
  ChatRoom? get chatRoom => throw _privateConstructorUsedError;
  @override
  Either<Job, Tender> get work => throw _privateConstructorUsedError;
  @override
  Either<Bid, BidOnTender> get workBid => throw _privateConstructorUsedError;
  @override
  Option<List<ChatItem>> get chatItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatroomStateCopyWith<_ChatroomState> get copyWith =>
      throw _privateConstructorUsedError;
}
