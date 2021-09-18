part of 'chatroom_bloc.dart';

@freezed
class ChatroomState with _$ChatroomState {
  const factory ChatroomState({
    required bool isTenderChat,
    required ChatRoom? chatRoom,
    required Job? job,
    required Bid? bid,
    required Tender? tender,
    required BidOnTender? tenderBid,
    required bool isLoading,
    required List<ChatItem>? chatItems,
  }) = _ChatroomState;

  factory ChatroomState.initial({
    required bool isTenderChat,
    required ChatRoom? chatRoom,
    required Job? job,
    required Bid? bid,
    required Tender? tender,
    required BidOnTender? tenderBid,
  }) {
    return _ChatroomState(
      isTenderChat: isTenderChat,
      chatRoom: chatRoom,
      job: job,
      bid: bid,
      tender: tender,
      tenderBid: tenderBid,
      chatItems: null,
      isLoading: true,
    );
  }
}
