part of 'chatroom_bloc.dart';

@freezed
class ChatroomState with _$ChatroomState {
  const ChatroomState._();
  const factory ChatroomState({
    required ChatRoom chatRoom,
    required Option<List<ChatItem>> chatItems,
  }) = _ChatroomState;

  factory ChatroomState.initial({
    required ChatRoom chatRoom,
  }) {
    return _ChatroomState(
      chatRoom: chatRoom,
      chatItems: optionOf(null),
    );
  }

  // Tender? get tender => work.fold((l) => null, id);
  // Job? get job => work.fold(id, (r) => null);
  // Bid? get bid => workBid.fold(id, (r) => null);
  // TenderBid? get tenderBid => workBid.fold((l) => null, id);
}
