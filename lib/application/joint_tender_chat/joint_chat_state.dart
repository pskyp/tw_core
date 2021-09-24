part of 'joint_chat_bloc.dart';

abstract class JointChatState {}

class JointChatStateEmpty extends JointChatState {}

class JointTenderChatState extends JointChatState {
  final ChatRoom? chatRoom;
  final Tender tender;
  final BidOnTender tenderBid;

  JointTenderChatState({
    required this.chatRoom,
    required this.tender,
    required this.tenderBid,
  });
}

class JointJobChatState extends JointChatState {
  final ChatRoom? chatRoom;
  final Job job;
  final Bid bid;

  JointJobChatState({
    required this.chatRoom,
    required this.job,
    required this.bid,
  });
}
