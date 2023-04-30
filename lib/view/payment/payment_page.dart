import 'package:banking_app/component/account_picker.dart';
import 'package:banking_app/view/style/decorations.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PaymentPage extends HookConsumerWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(title: const Text("Payment")),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "Pay from",
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

                const SizedBox(height: 20),
                const Text(
                  "Pay to",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                TextField(
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration: Decorations.inputDecoration(
                    "Account Number",
                    colorScheme,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  // number keyboard
                  keyboardType: TextInputType.number,
                  decoration: Decorations.inputDecoration(
                    "Routing Number",
                    colorScheme,
                  ),
                ),
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
                    "Memo",
                    colorScheme,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Pay"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
