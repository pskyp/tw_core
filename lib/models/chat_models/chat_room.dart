import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/bid/bid.dart';
import 'package:tw_core/models/bid_on_tender/bid_on_tender.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/services/chat_facade.dart';

import 'chat_item.dart';

part 'chat_room.g.dart';

class ChatRoomScreenArguments {
  final ChatRoom? chatRoom;
  final ChatType type;
  final Either<Job, Tender> work;
  final Either<Bid, BidOnTender> workBid;

  ChatRoomScreenArguments({
    required this.chatRoom,
    required this.type,
    required this.work,
    required this.workBid,
  });
}

@JsonSerializable(explicitToJson: true)
@immutable
class ChatRoom extends Equatable {
  final String chatRoomId;
  final String bidId;
  //jobId is equivalent to tenderId in chats between developer and contractor
  final String jobId;
  //jobTitle is equivalent to tenderTitle in chats between developer and contractor
  final String jobTitle;
  final String developmentTitle;
  final ChatItem? lastChatItem;
  final bool seenByAll;
  final bool isArchived;
  final TWUser p1, p2;
  final List<String> participantUIDs;
  final bool isTenderChat;

  //it should be noted that the lastChatItem in the the chatMeta object
  //contains duplicate data. It is not updated. Hence the seenByAll
  //has to be used instead of the seen attribute of the lastChatItem here

  ChatRoom({
    required this.isTenderChat,
    required this.chatRoomId,
    required this.bidId,
    required this.participantUIDs,
    required this.p1,
    required this.p2,
    required this.jobId,
    required this.jobTitle,
    required this.developmentTitle,
    required this.lastChatItem,
    required this.seenByAll,
    required this.isArchived,
  });

  factory ChatRoom.typeTender({
    required Tender tender,
    required BidOnTender tenderBid,
    required ChatItem? lastChatItem,
  }) {
    return ChatRoom(
      isTenderChat: true,
      chatRoomId: getTenderChatRoomId(tender: tender, tenderBid: tenderBid),
      bidId: tenderBid.bidId,
      participantUIDs: [
        tender.developerTWUser.uid,
        tenderBid.bidder.uid,
      ],
      p1: tender.developerTWUser,
      p2: tenderBid.bidder,
      jobId: tender.id,
      jobTitle: tender.tenderTitle,
      developmentTitle: 'static development title in chatroom model',
      lastChatItem: lastChatItem,
      seenByAll: false,
      isArchived: false,
    );
  }

  factory ChatRoom.typeJob({
    required Job job,
    required Bid bid,
    required ChatItem? lastChatItem,
  }) {
    return ChatRoom(
      isTenderChat: false,
      chatRoomId: getJobChatRoomId(job: job, bid: bid),
      bidId: bid.bidId,
      participantUIDs: [
        job.contractorTWUser.uid,
        bid.subbieTWUser.uid,
      ],
      p1: job.contractorTWUser,
      p2: bid.subbieTWUser,
      jobId: job.jobId,
      jobTitle: job.title,
      developmentTitle: 'static development title in chatroom model',
      lastChatItem: lastChatItem,
      seenByAll: false,
      isArchived: false,
    );
  }

  static String getJobChatRoomId({
    required Job job,
    required Bid bid,
  }) {
    return job.jobId + bid.bidId;
  }

  static String getTenderChatRoomId({
    required Tender tender,
    required BidOnTender tenderBid,
  }) {
    return tender.id + tenderBid.bidId;
  }

  static String getChatRoomId(
      Either<Job, Tender> work, Either<Bid, BidOnTender> workBid) {
    Job? job;
    Bid? bid;
    Tender? tender;
    BidOnTender? tenderBid;

    work.fold((l) => job = l, (r) => tender = r);
    workBid.fold((l) => bid = l, (r) => tenderBid = r);

    if (work.isLeft() && workBid.isLeft()) {
      return getJobChatRoomId(job: job!, bid: bid!);
    }
    return getTenderChatRoomId(tender: tender!, tenderBid: tenderBid!);
  }

  Map<String, dynamic> toJson() => _$ChatRoomToJson(this);
  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json);

  get shortJobTitle =>
      jobTitle.length < 10 ? jobTitle : jobTitle.substring(0, 8) + '...';

  TWUser get contractorPerson {
    if (p1.type == TWUserType.Contractor) return p1;
    if (p2.type == TWUserType.Contractor) return p2;

    throw UnexpectedValueError();
  }

  TWUser get subbiePerson {
    if (p1.type == TWUserType.Subbie) return p1;
    if (p2.type == TWUserType.Subbie) return p2;

    throw UnexpectedValueError();
  }

  TWUser get developerPerson {
    if (p1.type == TWUserType.Developer) return p1;
    if (p2.type == TWUserType.Developer) return p2;

    throw UnexpectedValueError();
  }

  TWUser chatPartner(final String uid) {
    if (p1.uid == uid) return p2;
    if (p2.uid == uid) return p1;

    throw UnexpectedValueError();
  }

  @override
  List<Object?> get props => [
        chatRoomId,
        bidId,
        participantUIDs,
        p1,
        p2,
        jobId,
        jobTitle,
        developmentTitle,
        lastChatItem,
        seenByAll,
        isArchived,
        isTenderChat,
      ];

  ChatRoom copyWithNewLastChatItem(ChatItem chatItem) {
    return ChatRoom(
      lastChatItem: chatItem,
      seenByAll: false,
      isTenderChat: this.isTenderChat,
      bidId: this.bidId,
      p1: this.p1,
      p2: this.p2,
      jobId: this.jobId,
      jobTitle: this.jobTitle,
      chatRoomId: this.chatRoomId,
      isArchived: this.isArchived,
      participantUIDs: this.participantUIDs,
      developmentTitle: this.developmentTitle,
    );
  }
}

class WorkChat {
  final ChatRoom chatRoom;

  WorkChat(this.chatRoom);
}

class TenderChat extends WorkChat {
  final Tender tender;
  final BidOnTender tenderBid;

  TenderChat({
    required this.tender,
    required this.tenderBid,
    required ChatRoom chatRoom,
  }) : super(chatRoom);
}

class JobChat extends WorkChat {
  final Job job;
  final Bid bid;

  JobChat({
    required this.job,
    required this.bid,
    required ChatRoom chatRoom,
  }) : super(chatRoom);
}
