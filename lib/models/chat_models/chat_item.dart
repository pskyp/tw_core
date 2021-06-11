import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../person/person.dart';

part 'chat_item.g.dart';

@JsonSerializable(explicitToJson: true)
@immutable
class ChatItem extends Equatable {
  final String text;
  final DateTime sendTime;
  final Person sender;
  final Person receiver;
  final String chatItemId;
  final String development;
  final bool seen;

  ChatItem({
    required this.sender,
    required this.development,
    required this.chatItemId,
    required this.receiver,
    required this.text,
    required this.seen,
    required this.sendTime,
  });

  get shortText => text.length < 30 ? text : text.substring(0, 30) + '...';

  Map<String, dynamic> toJson() => _$ChatItemToJson(this);
  factory ChatItem.fromJson(Map<String, dynamic> json) =>
      _$ChatItemFromJson(json);

  @override
  List<Object> get props => [sendTime, chatItemId];
}
