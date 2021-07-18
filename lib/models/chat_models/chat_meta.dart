import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/person/person.dart';

import 'chat_item.dart';

part 'chat_meta.g.dart';

@JsonSerializable(explicitToJson: true)
@immutable
class ChatMeta extends Equatable {
  final String chatRoomId;
  //jobId is equivalent to tenderId in chats between developer and contractor
  final String jobId;
  //jobTitle is equivalent to tenderTitle in chats between developer and contractor
  final String jobTitle;
  final String developmentTitle;
  final ChatItem? lastChatItem;
  final bool seenByAll;
  final bool isArchived;
  final List<String> participantUIDs;
  // final Person p1, p2;

  //it should be noted that the lastChatItem in the the chatMeta object
  //contains duplicate data. It is not updated. Hence the seenByAll
  //has to be used instead of the seen attribute of the lastChatItem here

  ChatMeta({
    required this.chatRoomId,
    required this.participantUIDs,
    // required this.p1,
    // required this.p2,
    required this.jobId,
    required this.jobTitle,
    required this.developmentTitle,
    required this.lastChatItem,
    required this.seenByAll,
    required this.isArchived,
  });

  Map<String, dynamic> toJson() => _$ChatMetaToJson(this);
  factory ChatMeta.fromJson(Map<String, dynamic> json) =>
      _$ChatMetaFromJson(json);

  get shortJobTitle =>
      jobTitle.length < 10 ? jobTitle : jobTitle.substring(0, 8) + '...';

  @override
  List<Object?> get props => [
        chatRoomId,
        jobId,
        jobTitle,
        developmentTitle,
        lastChatItem,
        seenByAll,
        isArchived,
        participantUIDs,
      ];

  ChatMeta copyWithNewLastChatItem(ChatItem chatItem) {
    return ChatMeta(
      lastChatItem: lastChatItem,
      seenByAll: false,
      chatRoomId: this.chatRoomId,
      jobId: this.jobId,
      participantUIDs: this.participantUIDs,
      jobTitle: this.jobTitle,
      developmentTitle: this.developmentTitle,
      isArchived: this.isArchived,
    );
  }
}
