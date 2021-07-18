import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../person/person.dart';

part 'chat_item.g.dart';

@JsonSerializable(explicitToJson: true)
@immutable
class ChatItem extends Equatable {
  final String chatItemId;
  final String chatRoomId;
  final String text;
  final Person sender;
  final DateTime sendTime;
  final bool seenByAll;
  // final Person receiver;
  // final String developmentTitle;

  ChatItem({
    required this.chatItemId,
    required this.chatRoomId,
    required this.text,
    required this.sender,
    required this.sendTime,
    required this.seenByAll,
  });

  get shortText => text.length < 30 ? text : text.substring(0, 30) + '...';

  Map<String, dynamic> toJson() => _$ChatItemToJson(this);
  factory ChatItem.fromJson(Map<String, dynamic> json) =>
      _$ChatItemFromJson(json);

  @override
  List<Object> get props => [sendTime, chatItemId];
}
