import 'package:banking_app/component/account_picker.dart';
import 'package:banking_app/view/style/balance_formatter.dart';
import 'package:banking_app/view/style/decorations.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WithdrawPage extends HookConsumerWidget {
  const WithdrawPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    //text controller
    final amountEditingController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Withdraw"),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "From",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                AccountPicker(
                  colorScheme: colorScheme,
                  accountList:
                      ref.read(userInfoProvider.notifier).getAccountNumbers(),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Amount",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: amountEditingController,
                  inputFormatters: [BalanceFormatter()],
                  // numeric keyboard
                  keyboardType: TextInputType.number,
                  decoration:
                      Decorations.inputDecoration("Amount", colorScheme),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Withdraw"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
