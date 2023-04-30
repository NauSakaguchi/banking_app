import 'package:banking_app/component/account_picker.dart';
import 'package:banking_app/view/style/decorations.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CloseAccountPage extends HookConsumerWidget {
  const CloseAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text("Close Account")),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  "Select account to close",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                AccountPicker(
                  colorScheme: colorScheme,
                  accountList:
                      ref.watch(userInfoProvider.notifier).getAccountNumbers(),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 30),
                const Text(
                  "Enter your password",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: Decorations.inputDecoration(
                    "Password",
                    colorScheme,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Close Account"),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
