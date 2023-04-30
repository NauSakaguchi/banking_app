// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatText _$$_ChatTextFromJson(Map<String, dynamic> json) => _$_ChatText(
      text: json['text'] as String? ?? '',
      sender:
          $enumDecodeNullable(_$SenderEnumMap, json['sender']) ?? Sender.user,
      timestamp: json['timestamp'] as String? ?? '',
    );

Map<String, dynamic> _$$_ChatTextToJson(_$_ChatText instance) =>
    <String, dynamic>{
      'text': instance.text,
      'sender': _$SenderEnumMap[instance.sender]!,
      'timestamp': instance.timestamp,
    };

const _$SenderEnumMap = {
  Sender.user: 'user',
  Sender.bot: 'bot',
};
