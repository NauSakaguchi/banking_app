import 'package:banking_app/model/chat_text/chat_text.dart';
import 'package:banking_app/view/information/state/information_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InformationPage extends HookConsumerWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final informationState = ref.watch(informationItemsProvider);
    final provider = ref.watch(informationItemsProvider.notifier);
    final colorScheme = Theme.of(context).colorScheme;
    final controller = useTextEditingController();

    final itemCount = informationState.chatHistory.length;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Information"),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: itemCount,
                itemBuilder: (context, index) {
                  return _buildChatMessage(
                    context,
                    chatText:
                        informationState.chatHistory[itemCount - index - 1],
                    colorScheme: colorScheme,
                  );
                  // return ListTile(
                  //   title: Text(informationState
                  //       .chatHistory[itemCount - index - 1].text),
                  // );
                },
              ),
            ),
            _buildInputField(
              controller: controller,
              colorScheme: colorScheme,
              onChanged: provider.updateText,
              onSubmitted: provider.submitText,
              isSubmitting: informationState.buttonLoading,
            ),
          ],
        ),
      ),
    );
  }

  // widget for chat message
  Widget _buildChatMessage(
    BuildContext context, {
    required ChatText chatText,
    required ColorScheme colorScheme,
  }) {
    bool isUser = chatText.sender == Sender.user ? true : false;

    const botMargin = EdgeInsets.only(
      left: 20.0,
      bottom: 10.0,
      right: 80.0,
    );

    const userMargin = EdgeInsets.only(
      left: 80.0,
      bottom: 10.0,
      right: 20.0,
    );

    // screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment:
          isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: screenWidth * 0.7),
          padding: const EdgeInsets.all(10.0),
          margin: isUser ? userMargin : botMargin,
          decoration: BoxDecoration(
            color: isUser ? colorScheme.primary : colorScheme.background,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(
            chatText.text,
            style: TextStyle(
              color: isUser ? colorScheme.onPrimary : colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }

  // input field
  Widget _buildInputField({
    required TextEditingController controller,
    required ColorScheme colorScheme,
    required void Function(String) onChanged,
    required Future<void> Function() onSubmitted,
    required bool isSubmitting,
  }) {
    return Container(
      color: colorScheme.background,
      padding: const EdgeInsets.only(
        left: 20.0,
        bottom: 10.0,
        right: 20.0,
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              //multiline
              maxLines: 3,
              minLines: 1,
              controller: controller,
              onChanged: onChanged,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Ask your question here",
              ),
            ),
          ),
          IconButton(
            onPressed: isSubmitting
                ? null
                : () async {
                    controller.clear();
                    await onSubmitted();
                  },
            icon: Icon(
              Icons.send,
              color:
                  isSubmitting ? colorScheme.onBackground : colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
