part of 'chatroom_bloc.dart';

@freezed
class ChatroomState with _$ChatroomState {
  const ChatroomState._();
  const factory ChatroomState({
    required ChatType type,
    required ChatRoom? chatRoom,
    required Either<Job, Tender> work,
    required Either<Bid, BidOnTender> workBid,
    required Option<List<ChatItem>> chatItems,
  }) = _ChatroomState;

  factory ChatroomState.initial({
    required ChatRoom? chatRoom,
    required ChatType type,
    required Either<Job, Tender> work,
    required Either<Bid, BidOnTender> workBid,
  }) {
    return _ChatroomState(
      chatRoom: chatRoom,
      workBid: workBid,
      work: work,
      chatItems: optionOf(null),
      type: type,
    );
  }

  Tender? get tender => work.fold((l) => null, id);
  Job? get job => work.fold(id, (r) => null);
  Bid? get bid => workBid.fold(id, (r) => null);
  BidOnTender? get tenderBid => workBid.fold((l) => null, id);
}
