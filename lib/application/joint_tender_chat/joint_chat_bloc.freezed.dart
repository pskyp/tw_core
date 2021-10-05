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

  OpenTenderChatRoom openChatRoom({required ChatRoom chatRoom}) {
    return OpenTenderChatRoom(
      chatRoom: chatRoom,
    );
  }
}

/// @nodoc
const $JointChatEvent = _$JointChatEventTearOff();

/// @nodoc
mixin _$JointChatEvent {
  ChatRoom get chatRoom => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatRoom chatRoom) openChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatRoom chatRoom)? openChatRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenTenderChatRoom value) openChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenTenderChatRoom value)? openChatRoom,
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
  $Res call({ChatRoom chatRoom});

  $ChatRoomCopyWith<$Res> get chatRoom;
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
              as ChatRoom,
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
abstract class $OpenTenderChatRoomCopyWith<$Res>
    implements $JointChatEventCopyWith<$Res> {
  factory $OpenTenderChatRoomCopyWith(
          OpenTenderChatRoom value, $Res Function(OpenTenderChatRoom) then) =
      _$OpenTenderChatRoomCopyWithImpl<$Res>;
  @override
  $Res call({ChatRoom chatRoom});

  @override
  $ChatRoomCopyWith<$Res> get chatRoom;
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
    Object? chatRoom = freezed,
  }) {
    return _then(OpenTenderChatRoom(
      chatRoom: chatRoom == freezed
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
    ));
  }
}

/// @nodoc

class _$OpenTenderChatRoom implements OpenTenderChatRoom {
  const _$OpenTenderChatRoom({required this.chatRoom});

  @override
  final ChatRoom chatRoom;

  @override
  String toString() {
    return 'JointChatEvent.openChatRoom(chatRoom: $chatRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenTenderChatRoom &&
            (identical(other.chatRoom, chatRoom) ||
                const DeepCollectionEquality()
                    .equals(other.chatRoom, chatRoom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatRoom);

  @JsonKey(ignore: true)
  @override
  $OpenTenderChatRoomCopyWith<OpenTenderChatRoom> get copyWith =>
      _$OpenTenderChatRoomCopyWithImpl<OpenTenderChatRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatRoom chatRoom) openChatRoom,
  }) {
    return openChatRoom(chatRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatRoom chatRoom)? openChatRoom,
    required TResult orElse(),
  }) {
    if (openChatRoom != null) {
      return openChatRoom(chatRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenTenderChatRoom value) openChatRoom,
  }) {
    return openChatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenTenderChatRoom value)? openChatRoom,
    required TResult orElse(),
  }) {
    if (openChatRoom != null) {
      return openChatRoom(this);
    }
    return orElse();
  }
}

abstract class OpenTenderChatRoom implements JointChatEvent {
  const factory OpenTenderChatRoom({required ChatRoom chatRoom}) =
      _$OpenTenderChatRoom;

  @override
  ChatRoom get chatRoom => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OpenTenderChatRoomCopyWith<OpenTenderChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
