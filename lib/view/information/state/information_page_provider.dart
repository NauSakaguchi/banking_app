import 'package:banking_app/core/tools/oepn_ai.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/model/chat_text/chat_text.dart';
import 'package:banking_app/view/information/state/information_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'information_page_provider.g.dart';

@riverpod
class InformationItems extends _$InformationItems {
  @override
  InformationPageState build() {
    return const InformationPageState();
  }

  void updateText(String str) {
    state = state.copyWith(text: str);
  }

  void updateChatHistory(List<ChatText> chatHistory) {
    state = state.copyWith(chatHistory: chatHistory);
  }

  Future<void> submitText() async {
    if (state.text.isEmpty) {
      return Future.value();
    }
    ChatText chatText = ChatText(
      text: state.text,
      sender: Sender.user,
    );
    addChatHistory(chatText);

    // loading
    updateButtonStatus(true);

    // get response from openai
    final message = await OpenAI.fromQuestion(question: state.text);
    logger.d(message);
    ChatText responseText = ChatText(text: message, sender: Sender.bot);
    addChatHistory(responseText);
    updateButtonStatus(false);

    return Future.value();
  }

  void addChatHistory(ChatText chatText) {
    state = state.copyWith(chatHistory: [...state.chatHistory, chatText]);
  }

  void updateButtonStatus(bool isLoading) {
    state = state.copyWith(
      buttonLoading: isLoading,
    );
  }
}
