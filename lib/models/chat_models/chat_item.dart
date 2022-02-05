import 'package:equatable/equatable.dart';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/theme/tw_theme.dart';

part 'chat_item.g.dart';

@JsonSerializable(explicitToJson: true)
@immutable
class ChatItem extends Equatable {
  final String chatItemId;
  final String chatRoomId;
  final String text_sender;
  final String text_reciever;
  final String senderUID;
  final DateTime sendTime;
  final bool seenByAll;
  final bool encrypted;
  final String recepientPublicKey;
  final String recepientUID;
  final String recepientPushToken;

  ChatItem({
    required this.chatItemId,
    required this.chatRoomId,
    required this.text_sender,
    required this.text_reciever,
    required this.senderUID,
    required this.sendTime,
    required this.seenByAll,
    required this.encrypted,
    required this.recepientPublicKey,
    required this.recepientUID,
    required this.recepientPushToken,
  });

  factory ChatItem.neu({
    required String text_sender,
    required String text_reciever,
    required TWUser sender,
    required String chatRoomId,
    required bool encrypted,
    required String recepientPublicKey,
    required String recepientUID,
    required String recepientPushToken,
  }) {
    return ChatItem(
      chatItemId: sender.uid + DateTime.now().toString(),
      chatRoomId: chatRoomId,
      text_sender: text_sender,
      text_reciever: text_reciever,
      senderUID: sender.uid,
      sendTime: DateTime.now(),
      seenByAll: false,
      encrypted: encrypted,
      recepientPublicKey: recepientPublicKey,
      recepientPushToken: recepientPushToken,
      recepientUID: recepientUID,
    );
  }

  get shortText => text_sender.length < 30
      ? text_sender
      : text_sender.substring(0, 30) + '...';

  Map<String, dynamic> toJson() => _$ChatItemToJson(this);
  factory ChatItem.fromJson(Map<String, dynamic> json) =>
      _$ChatItemFromJson(json);

  @override
  List<Object> get props => [
        chatItemId,
        chatRoomId,
        text_sender,
        text_reciever,
        senderUID,
        sendTime,
        seenByAll,
        encrypted,
        
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
  rawText: ChatConstants.negotiationMessage,
  shortText: "The contractor is interested.",
  text: '''Hi there! The contractor has shown interest
       in your application for this job''',
);

PresetChat offerPresetChat = PresetChat(
  rawText: ChatConstants.offerMessage,
  shortText: 'The job was offered.',
  text: '''The job was offered''',
);

PresetChat offerAcceptPresetChat = PresetChat(
  rawText: ChatConstants.offerAcceptMessage,
  shortText: 'The job was accepted.',
  text: '''The job was accepted''',
);

PresetChat offerDeclinePresetChat = PresetChat(
  rawText: ChatConstants.offerDeclineMessage,
  shortText: 'The job offer was declined.',
  text: '''The job offer was declined.''',
);

PresetChat jobCompletePresetChat = PresetChat(
  rawText: ChatConstants.jobCompleteMessage,
  shortText: 'The job was completed.',
  text: '''The job was completed.''',
);

class ChatConstants {
  static const String negotiationMessage =
      "###SuperSecretNegotiationMessage###";
  static const String offerMessage = "###SuperSecretOfferMessage###";
  static const String offerAcceptMessage =
      "###SuperSecretOfferAcceptMessage###";
  static const String offerDeclineMessage =
      "###SuperSecretOfferDeclineMessage###";
  static const String jobCompleteMessage =
      "###SuperSecretJobCompleteMessage###";
}
