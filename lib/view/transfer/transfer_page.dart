import 'package:banking_app/component/account_picker.dart';
import 'package:banking_app/view/style/decorations.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransferPage extends HookConsumerWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text("Transfer")),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "From",
                  style: TextStyle(fontSize: 20),
                ),
                // dropdown button to select account
                const SizedBox(height: 20),
                AccountPicker(
                  colorScheme: colorScheme,
                  accountList:
                      ref.watch(userInfoProvider.notifier).getAccountNumbers(),
                  onChanged: (value) {},
                ),

                const SizedBox(height: 10),
                // divider
                const Divider(
                  height: 20,
                  thickness: 1,
                ),
                const SizedBox(height: 10),
                const Text(
                  "To",
                  style: TextStyle(fontSize: 20),
                ),
                // dropdown button to select account
                const SizedBox(height: 20),
                AccountPicker(
                  colorScheme: colorScheme,
                  accountList:
                      ref.watch(userInfoProvider.notifier).getAccountNumbers(),
                  onChanged: (value) {},
                ),

                // Amount
                const SizedBox(height: 20),
                TextField(
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration: Decorations.inputDecoration(
                    "Amount",
                    colorScheme,
                  ),
                ),

                const SizedBox(height: 20),
                TextField(
                  decoration: Decorations.inputDecoration(
                    "Description",
                    colorScheme,
                  ),
                ),

                // Transfer Button
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Transfer"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
