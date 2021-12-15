// coverage:ignore-file
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
    required TResult Function(ChatItem chatItem) messageSeen,
    required TResult Function(List<ChatItem>? chatItems) messagesStreamUpdated,
    required TResult Function(String text) sendMessagePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSeen value) messageSeen,
    required TResult Function(MessagesStreamUpdated value)
        messagesStreamUpdated,
    required TResult Function(SendMessagePressed value) sendMessagePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageSeen value)? messageSeen,
    TResult Function(MessagesStreamUpdated value)? messagesStreamUpdated,
    TResult Function(SendMessagePressed value)? sendMessagePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
        (other.runtimeType == runtimeType &&
            other is MessageSeen &&
            const DeepCollectionEquality().equals(other.chatItem, chatItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatItem));

  @JsonKey(ignore: true)
  @override
  $MessageSeenCopyWith<MessageSeen> get copyWith =>
      _$MessageSeenCopyWithImpl<MessageSeen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatItem chatItem) messageSeen,
    required TResult Function(List<ChatItem>? chatItems) messagesStreamUpdated,
    required TResult Function(String text) sendMessagePressed,
  }) {
    return messageSeen(chatItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
  }) {
    return messageSeen?.call(chatItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(MessageSeen value) messageSeen,
    required TResult Function(MessagesStreamUpdated value)
        messagesStreamUpdated,
    required TResult Function(SendMessagePressed value) sendMessagePressed,
  }) {
    return messageSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageSeen value)? messageSeen,
    TResult Function(MessagesStreamUpdated value)? messagesStreamUpdated,
    TResult Function(SendMessagePressed value)? sendMessagePressed,
  }) {
    return messageSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

  ChatItem get chatItem;
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
        (other.runtimeType == runtimeType &&
            other is MessagesStreamUpdated &&
            const DeepCollectionEquality().equals(other.chatItems, chatItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatItems));

  @JsonKey(ignore: true)
  @override
  $MessagesStreamUpdatedCopyWith<MessagesStreamUpdated> get copyWith =>
      _$MessagesStreamUpdatedCopyWithImpl<MessagesStreamUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatItem chatItem) messageSeen,
    required TResult Function(List<ChatItem>? chatItems) messagesStreamUpdated,
    required TResult Function(String text) sendMessagePressed,
  }) {
    return messagesStreamUpdated(chatItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
  }) {
    return messagesStreamUpdated?.call(chatItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(MessageSeen value) messageSeen,
    required TResult Function(MessagesStreamUpdated value)
        messagesStreamUpdated,
    required TResult Function(SendMessagePressed value) sendMessagePressed,
  }) {
    return messagesStreamUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageSeen value)? messageSeen,
    TResult Function(MessagesStreamUpdated value)? messagesStreamUpdated,
    TResult Function(SendMessagePressed value)? sendMessagePressed,
  }) {
    return messagesStreamUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

  List<ChatItem>? get chatItems;
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
        (other.runtimeType == runtimeType &&
            other is SendMessagePressed &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  $SendMessagePressedCopyWith<SendMessagePressed> get copyWith =>
      _$SendMessagePressedCopyWithImpl<SendMessagePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatItem chatItem) messageSeen,
    required TResult Function(List<ChatItem>? chatItems) messagesStreamUpdated,
    required TResult Function(String text) sendMessagePressed,
  }) {
    return sendMessagePressed(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatItem chatItem)? messageSeen,
    TResult Function(List<ChatItem>? chatItems)? messagesStreamUpdated,
    TResult Function(String text)? sendMessagePressed,
  }) {
    return sendMessagePressed?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(MessageSeen value) messageSeen,
    required TResult Function(MessagesStreamUpdated value)
        messagesStreamUpdated,
    required TResult Function(SendMessagePressed value) sendMessagePressed,
  }) {
    return sendMessagePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageSeen value)? messageSeen,
    TResult Function(MessagesStreamUpdated value)? messagesStreamUpdated,
    TResult Function(SendMessagePressed value)? sendMessagePressed,
  }) {
    return sendMessagePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

  String get text;
  @JsonKey(ignore: true)
  $SendMessagePressedCopyWith<SendMessagePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatroomStateTearOff {
  const _$ChatroomStateTearOff();

  _ChatroomState call(
      {required ChatRoom chatRoom, required Option<List<ChatItem>> chatItems}) {
    return _ChatroomState(
      chatRoom: chatRoom,
      chatItems: chatItems,
    );
  }
}

/// @nodoc
const $ChatroomState = _$ChatroomStateTearOff();

/// @nodoc
mixin _$ChatroomState {
  ChatRoom get chatRoom => throw _privateConstructorUsedError;
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
  $Res call({ChatRoom chatRoom, Option<List<ChatItem>> chatItems});

  $ChatRoomCopyWith<$Res> get chatRoom;
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
    Object? chatRoom = freezed,
    Object? chatItems = freezed,
  }) {
    return _then(_value.copyWith(
      chatRoom: chatRoom == freezed
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
      chatItems: chatItems == freezed
          ? _value.chatItems
          : chatItems // ignore: cast_nullable_to_non_nullable
              as Option<List<ChatItem>>,
    ));
  }

  @override
  $ChatRoomCopyWith<$Res> get chatRoom {
    return $ChatRoomCopyWith<$Res>(_value.chatRoom, (value) {
      return _then(_value.copyWith(chatRoom: value));
    });
  }
}

/// @nodoc
abstract class _$ChatroomStateCopyWith<$Res>
    implements $ChatroomStateCopyWith<$Res> {
  factory _$ChatroomStateCopyWith(
          _ChatroomState value, $Res Function(_ChatroomState) then) =
      __$ChatroomStateCopyWithImpl<$Res>;
  @override
  $Res call({ChatRoom chatRoom, Option<List<ChatItem>> chatItems});

  @override
  $ChatRoomCopyWith<$Res> get chatRoom;
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
    Object? chatRoom = freezed,
    Object? chatItems = freezed,
  }) {
    return _then(_ChatroomState(
      chatRoom: chatRoom == freezed
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
      chatItems: chatItems == freezed
          ? _value.chatItems
          : chatItems // ignore: cast_nullable_to_non_nullable
              as Option<List<ChatItem>>,
    ));
  }
}

/// @nodoc

class _$_ChatroomState extends _ChatroomState {
  const _$_ChatroomState({required this.chatRoom, required this.chatItems})
      : super._();

  @override
  final ChatRoom chatRoom;
  @override
  final Option<List<ChatItem>> chatItems;

  @override
  String toString() {
    return 'ChatroomState(chatRoom: $chatRoom, chatItems: $chatItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatroomState &&
            const DeepCollectionEquality().equals(other.chatRoom, chatRoom) &&
            const DeepCollectionEquality().equals(other.chatItems, chatItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chatRoom),
      const DeepCollectionEquality().hash(chatItems));

  @JsonKey(ignore: true)
  @override
  _$ChatroomStateCopyWith<_ChatroomState> get copyWith =>
      __$ChatroomStateCopyWithImpl<_ChatroomState>(this, _$identity);
}

abstract class _ChatroomState extends ChatroomState {
  const factory _ChatroomState(
      {required ChatRoom chatRoom,
      required Option<List<ChatItem>> chatItems}) = _$_ChatroomState;
  const _ChatroomState._() : super._();

  @override
  ChatRoom get chatRoom;
  @override
  Option<List<ChatItem>> get chatItems;
  @override
  @JsonKey(ignore: true)
  _$ChatroomStateCopyWith<_ChatroomState> get copyWith =>
      throw _privateConstructorUsedError;
}
