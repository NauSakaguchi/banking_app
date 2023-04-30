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
    // wait two sec
    await Future.delayed(const Duration(seconds: 2));
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
