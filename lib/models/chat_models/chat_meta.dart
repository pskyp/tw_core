import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

import 'chat_item.dart';

part 'chat_meta.g.dart';

@JsonSerializable(explicitToJson: true)
@immutable
class ChatMeta extends Equatable {
  final String jobId;
  final String jobTitle;
  final String development;
  final ChatItem lastChatItem;
  final bool seenByReceiver;
  final bool isArchived;
  final List<String> participantUIDs;

  //it should be noted that the lastChatItem in the the chatMeta object
  //contains duplicate data. It is not updated. Hence the seenByreceiver
  //has to be used instead of the seen attribute of the lastChatItem here

  ChatMeta({
    @required this.participantUIDs,
    @required this.jobId,
    @required this.jobTitle,
    @required this.development,
    @required this.lastChatItem,
    @required this.seenByReceiver,
    @required this.isArchived,
  });

  Map<String, dynamic> toJson() => _$ChatMetaToJson(this);
  factory ChatMeta.fromJson(Map<String, dynamic> json) =>
      _$ChatMetaFromJson(json);

  get shortJobTitle =>
      jobTitle.length < 10 ? jobTitle : jobTitle.substring(0, 8) + '...';

  @override
  List<Object> get props => [jobId, lastChatItem];
}
