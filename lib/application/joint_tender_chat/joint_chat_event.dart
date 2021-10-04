part of 'joint_chat_bloc.dart';

@freezed
class JointChatEvent with _$JointChatEvent {
  const factory JointChatEvent.openTenderChatRoom({
    required Tender tender,
    required TenderBid tenderBid,
    required ChatRoom? chatRoom,
  }) = OpenTenderChatRoom;

  const factory JointChatEvent.openJobChatRoom({
    required Job job,
    required JobBid bid,
    required ChatRoom? chatRoom,
  }) = OpenJobChatRoom;
}
