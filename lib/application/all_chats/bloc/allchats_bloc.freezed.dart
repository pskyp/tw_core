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

  StreamAllTendersUpdated streamAllTendersUpdated(List<Tender> tenders) {
    return StreamAllTendersUpdated(
      tenders,
    );
  }

  StreamTenderBidsUpdated streamTenderBidsUpdated(
      List<BidOnTender> tenderBids) {
    return StreamTenderBidsUpdated(
      tenderBids,
    );
  }

  StreamAllJobsUpdated streamAllJobsUpdated(List<Job> jobs) {
    return StreamAllJobsUpdated(
      jobs,
    );
  }

  StreamAllBidsUpdated streamAllBidsUpdated(List<Bid> bids) {
    return StreamAllBidsUpdated(
      bids,
    );
  }
}

/// @nodoc
const $AllchatsEvent = _$AllchatsEventTearOff();

/// @nodoc
mixin _$AllchatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Tender> tenders) streamAllTendersUpdated,
    required TResult Function(List<BidOnTender> tenderBids)
        streamTenderBidsUpdated,
    required TResult Function(List<Job> jobs) streamAllJobsUpdated,
    required TResult Function(List<Bid> bids) streamAllBidsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Tender> tenders)? streamAllTendersUpdated,
    TResult Function(List<BidOnTender> tenderBids)? streamTenderBidsUpdated,
    TResult Function(List<Job> jobs)? streamAllJobsUpdated,
    TResult Function(List<Bid> bids)? streamAllBidsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamAllTendersUpdated value)
        streamAllTendersUpdated,
    required TResult Function(StreamTenderBidsUpdated value)
        streamTenderBidsUpdated,
    required TResult Function(StreamAllJobsUpdated value) streamAllJobsUpdated,
    required TResult Function(StreamAllBidsUpdated value) streamAllBidsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamAllTendersUpdated value)? streamAllTendersUpdated,
    TResult Function(StreamTenderBidsUpdated value)? streamTenderBidsUpdated,
    TResult Function(StreamAllJobsUpdated value)? streamAllJobsUpdated,
    TResult Function(StreamAllBidsUpdated value)? streamAllBidsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllchatsEventCopyWith<$Res> {
  factory $AllchatsEventCopyWith(
          AllchatsEvent value, $Res Function(AllchatsEvent) then) =
      _$AllchatsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllchatsEventCopyWithImpl<$Res>
    implements $AllchatsEventCopyWith<$Res> {
  _$AllchatsEventCopyWithImpl(this._value, this._then);

  final AllchatsEvent _value;
  // ignore: unused_field
  final $Res Function(AllchatsEvent) _then;
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
    required TResult Function(List<Tender> tenders) streamAllTendersUpdated,
    required TResult Function(List<BidOnTender> tenderBids)
        streamTenderBidsUpdated,
    required TResult Function(List<Job> jobs) streamAllJobsUpdated,
    required TResult Function(List<Bid> bids) streamAllBidsUpdated,
  }) {
    return streamChatRoomsUpdated(chatRooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Tender> tenders)? streamAllTendersUpdated,
    TResult Function(List<BidOnTender> tenderBids)? streamTenderBidsUpdated,
    TResult Function(List<Job> jobs)? streamAllJobsUpdated,
    TResult Function(List<Bid> bids)? streamAllBidsUpdated,
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
    required TResult Function(StreamAllTendersUpdated value)
        streamAllTendersUpdated,
    required TResult Function(StreamTenderBidsUpdated value)
        streamTenderBidsUpdated,
    required TResult Function(StreamAllJobsUpdated value) streamAllJobsUpdated,
    required TResult Function(StreamAllBidsUpdated value) streamAllBidsUpdated,
  }) {
    return streamChatRoomsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamAllTendersUpdated value)? streamAllTendersUpdated,
    TResult Function(StreamTenderBidsUpdated value)? streamTenderBidsUpdated,
    TResult Function(StreamAllJobsUpdated value)? streamAllJobsUpdated,
    TResult Function(StreamAllBidsUpdated value)? streamAllBidsUpdated,
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

  List<ChatRoom> get chatRooms => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamChatRoomsUpdatedCopyWith<StreamChatRoomsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamAllTendersUpdatedCopyWith<$Res> {
  factory $StreamAllTendersUpdatedCopyWith(StreamAllTendersUpdated value,
          $Res Function(StreamAllTendersUpdated) then) =
      _$StreamAllTendersUpdatedCopyWithImpl<$Res>;
  $Res call({List<Tender> tenders});
}

/// @nodoc
class _$StreamAllTendersUpdatedCopyWithImpl<$Res>
    extends _$AllchatsEventCopyWithImpl<$Res>
    implements $StreamAllTendersUpdatedCopyWith<$Res> {
  _$StreamAllTendersUpdatedCopyWithImpl(StreamAllTendersUpdated _value,
      $Res Function(StreamAllTendersUpdated) _then)
      : super(_value, (v) => _then(v as StreamAllTendersUpdated));

  @override
  StreamAllTendersUpdated get _value => super._value as StreamAllTendersUpdated;

  @override
  $Res call({
    Object? tenders = freezed,
  }) {
    return _then(StreamAllTendersUpdated(
      tenders == freezed
          ? _value.tenders
          : tenders // ignore: cast_nullable_to_non_nullable
              as List<Tender>,
    ));
  }
}

/// @nodoc

class _$StreamAllTendersUpdated implements StreamAllTendersUpdated {
  const _$StreamAllTendersUpdated(this.tenders);

  @override
  final List<Tender> tenders;

  @override
  String toString() {
    return 'AllchatsEvent.streamAllTendersUpdated(tenders: $tenders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamAllTendersUpdated &&
            (identical(other.tenders, tenders) ||
                const DeepCollectionEquality().equals(other.tenders, tenders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tenders);

  @JsonKey(ignore: true)
  @override
  $StreamAllTendersUpdatedCopyWith<StreamAllTendersUpdated> get copyWith =>
      _$StreamAllTendersUpdatedCopyWithImpl<StreamAllTendersUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Tender> tenders) streamAllTendersUpdated,
    required TResult Function(List<BidOnTender> tenderBids)
        streamTenderBidsUpdated,
    required TResult Function(List<Job> jobs) streamAllJobsUpdated,
    required TResult Function(List<Bid> bids) streamAllBidsUpdated,
  }) {
    return streamAllTendersUpdated(tenders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Tender> tenders)? streamAllTendersUpdated,
    TResult Function(List<BidOnTender> tenderBids)? streamTenderBidsUpdated,
    TResult Function(List<Job> jobs)? streamAllJobsUpdated,
    TResult Function(List<Bid> bids)? streamAllBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamAllTendersUpdated != null) {
      return streamAllTendersUpdated(tenders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamAllTendersUpdated value)
        streamAllTendersUpdated,
    required TResult Function(StreamTenderBidsUpdated value)
        streamTenderBidsUpdated,
    required TResult Function(StreamAllJobsUpdated value) streamAllJobsUpdated,
    required TResult Function(StreamAllBidsUpdated value) streamAllBidsUpdated,
  }) {
    return streamAllTendersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamAllTendersUpdated value)? streamAllTendersUpdated,
    TResult Function(StreamTenderBidsUpdated value)? streamTenderBidsUpdated,
    TResult Function(StreamAllJobsUpdated value)? streamAllJobsUpdated,
    TResult Function(StreamAllBidsUpdated value)? streamAllBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamAllTendersUpdated != null) {
      return streamAllTendersUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamAllTendersUpdated implements AllchatsEvent {
  const factory StreamAllTendersUpdated(List<Tender> tenders) =
      _$StreamAllTendersUpdated;

  List<Tender> get tenders => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamAllTendersUpdatedCopyWith<StreamAllTendersUpdated> get copyWith =>
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
    extends _$AllchatsEventCopyWithImpl<$Res>
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
    return 'AllchatsEvent.streamTenderBidsUpdated(tenderBids: $tenderBids)';
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
    required TResult Function(List<Tender> tenders) streamAllTendersUpdated,
    required TResult Function(List<BidOnTender> tenderBids)
        streamTenderBidsUpdated,
    required TResult Function(List<Job> jobs) streamAllJobsUpdated,
    required TResult Function(List<Bid> bids) streamAllBidsUpdated,
  }) {
    return streamTenderBidsUpdated(tenderBids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Tender> tenders)? streamAllTendersUpdated,
    TResult Function(List<BidOnTender> tenderBids)? streamTenderBidsUpdated,
    TResult Function(List<Job> jobs)? streamAllJobsUpdated,
    TResult Function(List<Bid> bids)? streamAllBidsUpdated,
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
    required TResult Function(StreamAllTendersUpdated value)
        streamAllTendersUpdated,
    required TResult Function(StreamTenderBidsUpdated value)
        streamTenderBidsUpdated,
    required TResult Function(StreamAllJobsUpdated value) streamAllJobsUpdated,
    required TResult Function(StreamAllBidsUpdated value) streamAllBidsUpdated,
  }) {
    return streamTenderBidsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamAllTendersUpdated value)? streamAllTendersUpdated,
    TResult Function(StreamTenderBidsUpdated value)? streamTenderBidsUpdated,
    TResult Function(StreamAllJobsUpdated value)? streamAllJobsUpdated,
    TResult Function(StreamAllBidsUpdated value)? streamAllBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamTenderBidsUpdated != null) {
      return streamTenderBidsUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamTenderBidsUpdated implements AllchatsEvent {
  const factory StreamTenderBidsUpdated(List<BidOnTender> tenderBids) =
      _$StreamTenderBidsUpdated;

  List<BidOnTender> get tenderBids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamTenderBidsUpdatedCopyWith<StreamTenderBidsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamAllJobsUpdatedCopyWith<$Res> {
  factory $StreamAllJobsUpdatedCopyWith(StreamAllJobsUpdated value,
          $Res Function(StreamAllJobsUpdated) then) =
      _$StreamAllJobsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Job> jobs});
}

/// @nodoc
class _$StreamAllJobsUpdatedCopyWithImpl<$Res>
    extends _$AllchatsEventCopyWithImpl<$Res>
    implements $StreamAllJobsUpdatedCopyWith<$Res> {
  _$StreamAllJobsUpdatedCopyWithImpl(
      StreamAllJobsUpdated _value, $Res Function(StreamAllJobsUpdated) _then)
      : super(_value, (v) => _then(v as StreamAllJobsUpdated));

  @override
  StreamAllJobsUpdated get _value => super._value as StreamAllJobsUpdated;

  @override
  $Res call({
    Object? jobs = freezed,
  }) {
    return _then(StreamAllJobsUpdated(
      jobs == freezed
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ));
  }
}

/// @nodoc

class _$StreamAllJobsUpdated implements StreamAllJobsUpdated {
  const _$StreamAllJobsUpdated(this.jobs);

  @override
  final List<Job> jobs;

  @override
  String toString() {
    return 'AllchatsEvent.streamAllJobsUpdated(jobs: $jobs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamAllJobsUpdated &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(jobs);

  @JsonKey(ignore: true)
  @override
  $StreamAllJobsUpdatedCopyWith<StreamAllJobsUpdated> get copyWith =>
      _$StreamAllJobsUpdatedCopyWithImpl<StreamAllJobsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Tender> tenders) streamAllTendersUpdated,
    required TResult Function(List<BidOnTender> tenderBids)
        streamTenderBidsUpdated,
    required TResult Function(List<Job> jobs) streamAllJobsUpdated,
    required TResult Function(List<Bid> bids) streamAllBidsUpdated,
  }) {
    return streamAllJobsUpdated(jobs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Tender> tenders)? streamAllTendersUpdated,
    TResult Function(List<BidOnTender> tenderBids)? streamTenderBidsUpdated,
    TResult Function(List<Job> jobs)? streamAllJobsUpdated,
    TResult Function(List<Bid> bids)? streamAllBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamAllJobsUpdated != null) {
      return streamAllJobsUpdated(jobs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamAllTendersUpdated value)
        streamAllTendersUpdated,
    required TResult Function(StreamTenderBidsUpdated value)
        streamTenderBidsUpdated,
    required TResult Function(StreamAllJobsUpdated value) streamAllJobsUpdated,
    required TResult Function(StreamAllBidsUpdated value) streamAllBidsUpdated,
  }) {
    return streamAllJobsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamAllTendersUpdated value)? streamAllTendersUpdated,
    TResult Function(StreamTenderBidsUpdated value)? streamTenderBidsUpdated,
    TResult Function(StreamAllJobsUpdated value)? streamAllJobsUpdated,
    TResult Function(StreamAllBidsUpdated value)? streamAllBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamAllJobsUpdated != null) {
      return streamAllJobsUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamAllJobsUpdated implements AllchatsEvent {
  const factory StreamAllJobsUpdated(List<Job> jobs) = _$StreamAllJobsUpdated;

  List<Job> get jobs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamAllJobsUpdatedCopyWith<StreamAllJobsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamAllBidsUpdatedCopyWith<$Res> {
  factory $StreamAllBidsUpdatedCopyWith(StreamAllBidsUpdated value,
          $Res Function(StreamAllBidsUpdated) then) =
      _$StreamAllBidsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Bid> bids});
}

/// @nodoc
class _$StreamAllBidsUpdatedCopyWithImpl<$Res>
    extends _$AllchatsEventCopyWithImpl<$Res>
    implements $StreamAllBidsUpdatedCopyWith<$Res> {
  _$StreamAllBidsUpdatedCopyWithImpl(
      StreamAllBidsUpdated _value, $Res Function(StreamAllBidsUpdated) _then)
      : super(_value, (v) => _then(v as StreamAllBidsUpdated));

  @override
  StreamAllBidsUpdated get _value => super._value as StreamAllBidsUpdated;

  @override
  $Res call({
    Object? bids = freezed,
  }) {
    return _then(StreamAllBidsUpdated(
      bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<Bid>,
    ));
  }
}

/// @nodoc

class _$StreamAllBidsUpdated implements StreamAllBidsUpdated {
  const _$StreamAllBidsUpdated(this.bids);

  @override
  final List<Bid> bids;

  @override
  String toString() {
    return 'AllchatsEvent.streamAllBidsUpdated(bids: $bids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamAllBidsUpdated &&
            (identical(other.bids, bids) ||
                const DeepCollectionEquality().equals(other.bids, bids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bids);

  @JsonKey(ignore: true)
  @override
  $StreamAllBidsUpdatedCopyWith<StreamAllBidsUpdated> get copyWith =>
      _$StreamAllBidsUpdatedCopyWithImpl<StreamAllBidsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatRoom> chatRooms) streamChatRoomsUpdated,
    required TResult Function(List<Tender> tenders) streamAllTendersUpdated,
    required TResult Function(List<BidOnTender> tenderBids)
        streamTenderBidsUpdated,
    required TResult Function(List<Job> jobs) streamAllJobsUpdated,
    required TResult Function(List<Bid> bids) streamAllBidsUpdated,
  }) {
    return streamAllBidsUpdated(bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatRoom> chatRooms)? streamChatRoomsUpdated,
    TResult Function(List<Tender> tenders)? streamAllTendersUpdated,
    TResult Function(List<BidOnTender> tenderBids)? streamTenderBidsUpdated,
    TResult Function(List<Job> jobs)? streamAllJobsUpdated,
    TResult Function(List<Bid> bids)? streamAllBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamAllBidsUpdated != null) {
      return streamAllBidsUpdated(bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamChatRoomsUpdated value)
        streamChatRoomsUpdated,
    required TResult Function(StreamAllTendersUpdated value)
        streamAllTendersUpdated,
    required TResult Function(StreamTenderBidsUpdated value)
        streamTenderBidsUpdated,
    required TResult Function(StreamAllJobsUpdated value) streamAllJobsUpdated,
    required TResult Function(StreamAllBidsUpdated value) streamAllBidsUpdated,
  }) {
    return streamAllBidsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamChatRoomsUpdated value)? streamChatRoomsUpdated,
    TResult Function(StreamAllTendersUpdated value)? streamAllTendersUpdated,
    TResult Function(StreamTenderBidsUpdated value)? streamTenderBidsUpdated,
    TResult Function(StreamAllJobsUpdated value)? streamAllJobsUpdated,
    TResult Function(StreamAllBidsUpdated value)? streamAllBidsUpdated,
    required TResult orElse(),
  }) {
    if (streamAllBidsUpdated != null) {
      return streamAllBidsUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamAllBidsUpdated implements AllchatsEvent {
  const factory StreamAllBidsUpdated(List<Bid> bids) = _$StreamAllBidsUpdated;

  List<Bid> get bids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamAllBidsUpdatedCopyWith<StreamAllBidsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AllchatsStateTearOff {
  const _$AllchatsStateTearOff();

  _AllchatsState call(
      {required Option<List<ChatRoom>> allChatRooms,
      required Option<List<Job>> allJobs,
      required Option<List<Bid>> allBids,
      required Option<List<Tender>> allTenders,
      required Option<List<BidOnTender>> allTenderBids,
      required ChatType type}) {
    return _AllchatsState(
      allChatRooms: allChatRooms,
      allJobs: allJobs,
      allBids: allBids,
      allTenders: allTenders,
      allTenderBids: allTenderBids,
      type: type,
    );
  }
}

/// @nodoc
const $AllchatsState = _$AllchatsStateTearOff();

/// @nodoc
mixin _$AllchatsState {
  Option<List<ChatRoom>> get allChatRooms => throw _privateConstructorUsedError;
  Option<List<Job>> get allJobs => throw _privateConstructorUsedError;
  Option<List<Bid>> get allBids => throw _privateConstructorUsedError;
  Option<List<Tender>> get allTenders => throw _privateConstructorUsedError;
  Option<List<BidOnTender>> get allTenderBids =>
      throw _privateConstructorUsedError;
  ChatType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllchatsStateCopyWith<AllchatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllchatsStateCopyWith<$Res> {
  factory $AllchatsStateCopyWith(
          AllchatsState value, $Res Function(AllchatsState) then) =
      _$AllchatsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<List<ChatRoom>> allChatRooms,
      Option<List<Job>> allJobs,
      Option<List<Bid>> allBids,
      Option<List<Tender>> allTenders,
      Option<List<BidOnTender>> allTenderBids,
      ChatType type});
}

/// @nodoc
class _$AllchatsStateCopyWithImpl<$Res>
    implements $AllchatsStateCopyWith<$Res> {
  _$AllchatsStateCopyWithImpl(this._value, this._then);

  final AllchatsState _value;
  // ignore: unused_field
  final $Res Function(AllchatsState) _then;

  @override
  $Res call({
    Object? allChatRooms = freezed,
    Object? allJobs = freezed,
    Object? allBids = freezed,
    Object? allTenders = freezed,
    Object? allTenderBids = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      allChatRooms: allChatRooms == freezed
          ? _value.allChatRooms
          : allChatRooms // ignore: cast_nullable_to_non_nullable
              as Option<List<ChatRoom>>,
      allJobs: allJobs == freezed
          ? _value.allJobs
          : allJobs // ignore: cast_nullable_to_non_nullable
              as Option<List<Job>>,
      allBids: allBids == freezed
          ? _value.allBids
          : allBids // ignore: cast_nullable_to_non_nullable
              as Option<List<Bid>>,
      allTenders: allTenders == freezed
          ? _value.allTenders
          : allTenders // ignore: cast_nullable_to_non_nullable
              as Option<List<Tender>>,
      allTenderBids: allTenderBids == freezed
          ? _value.allTenderBids
          : allTenderBids // ignore: cast_nullable_to_non_nullable
              as Option<List<BidOnTender>>,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChatType,
    ));
  }
}

/// @nodoc
abstract class _$AllchatsStateCopyWith<$Res>
    implements $AllchatsStateCopyWith<$Res> {
  factory _$AllchatsStateCopyWith(
          _AllchatsState value, $Res Function(_AllchatsState) then) =
      __$AllchatsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<List<ChatRoom>> allChatRooms,
      Option<List<Job>> allJobs,
      Option<List<Bid>> allBids,
      Option<List<Tender>> allTenders,
      Option<List<BidOnTender>> allTenderBids,
      ChatType type});
}

/// @nodoc
class __$AllchatsStateCopyWithImpl<$Res>
    extends _$AllchatsStateCopyWithImpl<$Res>
    implements _$AllchatsStateCopyWith<$Res> {
  __$AllchatsStateCopyWithImpl(
      _AllchatsState _value, $Res Function(_AllchatsState) _then)
      : super(_value, (v) => _then(v as _AllchatsState));

  @override
  _AllchatsState get _value => super._value as _AllchatsState;

  @override
  $Res call({
    Object? allChatRooms = freezed,
    Object? allJobs = freezed,
    Object? allBids = freezed,
    Object? allTenders = freezed,
    Object? allTenderBids = freezed,
    Object? type = freezed,
  }) {
    return _then(_AllchatsState(
      allChatRooms: allChatRooms == freezed
          ? _value.allChatRooms
          : allChatRooms // ignore: cast_nullable_to_non_nullable
              as Option<List<ChatRoom>>,
      allJobs: allJobs == freezed
          ? _value.allJobs
          : allJobs // ignore: cast_nullable_to_non_nullable
              as Option<List<Job>>,
      allBids: allBids == freezed
          ? _value.allBids
          : allBids // ignore: cast_nullable_to_non_nullable
              as Option<List<Bid>>,
      allTenders: allTenders == freezed
          ? _value.allTenders
          : allTenders // ignore: cast_nullable_to_non_nullable
              as Option<List<Tender>>,
      allTenderBids: allTenderBids == freezed
          ? _value.allTenderBids
          : allTenderBids // ignore: cast_nullable_to_non_nullable
              as Option<List<BidOnTender>>,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChatType,
    ));
  }
}

/// @nodoc

class _$_AllchatsState extends _AllchatsState {
  const _$_AllchatsState(
      {required this.allChatRooms,
      required this.allJobs,
      required this.allBids,
      required this.allTenders,
      required this.allTenderBids,
      required this.type})
      : super._();

  @override
  final Option<List<ChatRoom>> allChatRooms;
  @override
  final Option<List<Job>> allJobs;
  @override
  final Option<List<Bid>> allBids;
  @override
  final Option<List<Tender>> allTenders;
  @override
  final Option<List<BidOnTender>> allTenderBids;
  @override
  final ChatType type;

  @override
  String toString() {
    return 'AllchatsState(allChatRooms: $allChatRooms, allJobs: $allJobs, allBids: $allBids, allTenders: $allTenders, allTenderBids: $allTenderBids, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllchatsState &&
            (identical(other.allChatRooms, allChatRooms) ||
                const DeepCollectionEquality()
                    .equals(other.allChatRooms, allChatRooms)) &&
            (identical(other.allJobs, allJobs) ||
                const DeepCollectionEquality()
                    .equals(other.allJobs, allJobs)) &&
            (identical(other.allBids, allBids) ||
                const DeepCollectionEquality()
                    .equals(other.allBids, allBids)) &&
            (identical(other.allTenders, allTenders) ||
                const DeepCollectionEquality()
                    .equals(other.allTenders, allTenders)) &&
            (identical(other.allTenderBids, allTenderBids) ||
                const DeepCollectionEquality()
                    .equals(other.allTenderBids, allTenderBids)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allChatRooms) ^
      const DeepCollectionEquality().hash(allJobs) ^
      const DeepCollectionEquality().hash(allBids) ^
      const DeepCollectionEquality().hash(allTenders) ^
      const DeepCollectionEquality().hash(allTenderBids) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$AllchatsStateCopyWith<_AllchatsState> get copyWith =>
      __$AllchatsStateCopyWithImpl<_AllchatsState>(this, _$identity);
}

abstract class _AllchatsState extends AllchatsState {
  const factory _AllchatsState(
      {required Option<List<ChatRoom>> allChatRooms,
      required Option<List<Job>> allJobs,
      required Option<List<Bid>> allBids,
      required Option<List<Tender>> allTenders,
      required Option<List<BidOnTender>> allTenderBids,
      required ChatType type}) = _$_AllchatsState;
  const _AllchatsState._() : super._();

  @override
  Option<List<ChatRoom>> get allChatRooms => throw _privateConstructorUsedError;
  @override
  Option<List<Job>> get allJobs => throw _privateConstructorUsedError;
  @override
  Option<List<Bid>> get allBids => throw _privateConstructorUsedError;
  @override
  Option<List<Tender>> get allTenders => throw _privateConstructorUsedError;
  @override
  Option<List<BidOnTender>> get allTenderBids =>
      throw _privateConstructorUsedError;
  @override
  ChatType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AllchatsStateCopyWith<_AllchatsState> get copyWith =>
      throw _privateConstructorUsedError;
}
