import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_text.freezed.dart';
part 'chat_text.g.dart';

@freezed
class ChatText with _$ChatText {
  const factory ChatText({
    @Default('') String text,
    @Default(Sender.user) Sender sender,
    @Default('') String timestamp,
  }) = _ChatText;

  const ChatText._();

  factory ChatText.fromJson(Map<String, dynamic> json) =>
      _$ChatTextFromJson(json);
}

enum Sender {
  @JsonValue('user')
  user,
  @JsonValue('bot')
  bot,
}
