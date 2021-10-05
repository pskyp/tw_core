// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'allchats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AllchatsEventTearOff {
  const _$AllchatsEventTearOff();

  StreamChatRoomsUpdated streamChatRoomsUpdated(List<ChatRoom> chatRooms) {
    return StreamChatRoomsUpdated(
      chatRooms,
    );
  }
}

/// @nodoc
const $AllchatsEvent = _$AllchatsEventTearOff();

/// @nodoc
mixin _$AllchatsEvent {
  List<ChatRoom> get chatRooms => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllchatsEventCopyWith<AllchatsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllchatsEventCopyWith<$Res> {
  factory $AllchatsEventCopyWith(
          AllchatsEvent value, $Res Function(AllchatsEvent) then) =
      _$AllchatsEventCopyWithImpl<$Res>;
  $Res call({List<ChatRoom> chatRooms});
}

/// @nodoc
class _$AllchatsEventCopyWithImpl<$Res>
    implements $AllchatsEventCopyWith<$Res> {
  _$AllchatsEventCopyWithImpl(this._value, this._then);

  final AllchatsEvent _value;
  // ignore: unused_field
  final $Res Function(AllchatsEvent) _then;

  @override
  $Res call({
    Object? chatRooms = freezed,
  }) {
    return _then(_value.copyWith(
      chatRooms: chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as List<ChatRoom>,
    ));
  }
}

/// @nodoc
abstract class $StreamChatRoomsUpdatedCopyWith<$Res>
    implements $AllchatsEventCopyWith<$Res> {
  factory $StreamChatRoomsUpdatedCopyWith(StreamChatRoomsUpdated value,
          $Res Function(StreamChatRoomsUpdated) then) =
      _$StreamChatRoomsUpdatedCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatRoom> chatRooms});
}

/// @nodoc
class _$StreamChatRoomsUpdatedCopyWithImpl<$Res>
    extends _$AllchatsEventCopyWithImpl<$Res>
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
    return 'AllchatsEvent.streamChatRoomsUpdated(chatRooms: $chatRooms)';
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
  }) {
    return streamChatRoomsUpdated(chatRooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
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
  }) {
    return streamChatRoomsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    required TResult orElse(),
  }) {
    if (streamChatRoomsUpdated != null) {
      return streamChatRoomsUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamChatRoomsUpdated implements AllchatsEvent {
  const factory StreamChatRoomsUpdated(List<ChatRoom> chatRooms) =
      _$StreamChatRoomsUpdated;

  @override
  List<ChatRoom> get chatRooms => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StreamChatRoomsUpdatedCopyWith<StreamChatRoomsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
