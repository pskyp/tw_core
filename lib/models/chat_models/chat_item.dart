import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/theme/tw_theme.dart';

part 'chat_item.g.dart';

@JsonSerializable(explicitToJson: true)
@immutable
class ChatItem extends Equatable {
  final String chatItemId;
  final String chatRoomId;
  final String text;
  final String senderUID;
  final DateTime sendTime;
  final bool seenByAll;

  ChatItem({
    required this.chatItemId,
    required this.chatRoomId,
    required this.text,
    required this.senderUID,
    required this.sendTime,
    required this.seenByAll,
  });

  get shortText => text.length < 30 ? text : text.substring(0, 30) + '...';

  Map<String, dynamic> toJson() => _$ChatItemToJson(this);
  factory ChatItem.fromJson(Map<String, dynamic> json) =>
      _$ChatItemFromJson(json);

  @override
  List<Object> get props => [
        chatItemId,
        chatRoomId,
        text,
        senderUID,
        sendTime,
        seenByAll,
      ];
}

//rawText in presetChat corresponds to text in ChatItem
class PresetChat extends Equatable {
  final String rawText;
  final String shortText;
  final String text;

  PresetChat({
    required this.rawText,
    required this.shortText,
    required this.text,
  });

  Widget get ui => Container(
        margin: EdgeInsets.only(top: 8, left: 15, right: 15),
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: TWTheme.kMainThemeColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  @override
  List<Object?> get props => [
        rawText,
        shortText,
        text,
      ];
}

List<PresetChat> allPresetChats = [
  negotiationPresetChat,
  offerPresetChat,
  offerAcceptPresetChat,
  offerDeclinePresetChat,
  jobCompletePresetChat,
];

PresetChat? getPresetChat(String rawText) {
  int index = allPresetChats.indexWhere(
    (presetChat) => presetChat.rawText == rawText,
  );
  print("index of preset chat: ${index}");
  return index == -1 ? null : allPresetChats[index];
}

PresetChat negotiationPresetChat = PresetChat(
  rawText: '###SuperSecretNegotiationMessage###',
  shortText: "The contractor is interested.",
  text: '''Hi there! The contractor has shown interest
       in your application for this job''',
);

PresetChat offerPresetChat = PresetChat(
  rawText: '###SuperSecretOfferMessage###',
  shortText: 'The job was offered.',
  text: '''The job was offered''',
);

PresetChat offerAcceptPresetChat = PresetChat(
  rawText: '###SuperSecretOfferAcceptMessage###',
  shortText: 'The job was accepted.',
  text: '''The job was accepted''',
);

PresetChat offerDeclinePresetChat = PresetChat(
  rawText: '###SuperSecretOfferDeclineMessage###',
  shortText: 'The job offer was declined.',
  text: '''The job offer was declined.''',
);

PresetChat jobCompletePresetChat = PresetChat(
  rawText: '###SuperSecretJobCompleteMessage###',
  shortText: 'The job was completed.',
  text: '''The job was completed.''',
);
