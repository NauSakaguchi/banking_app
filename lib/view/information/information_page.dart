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
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("Item $index"),
                  );
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
