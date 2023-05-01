import 'package:banking_app/component/account_picker.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/view/style/balance_formatter.dart';
import 'package:banking_app/view/style/decorations.dart';
import 'package:banking_app/view/withdraw/state/withdraw_provider.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WithdrawPage extends HookConsumerWidget {
  const WithdrawPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final withdrawState = ref.watch(withdrawItemsProvider);
    final provider = ref.watch(withdrawItemsProvider.notifier);

    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    //text controller
    final amountEditingController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Withdraw"),
      ),
      body: withdrawState.initialized
          ? GestureDetector(
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AccountPicker(
                        colorScheme: colorScheme,
                        value: withdrawState.accountNumber,
                        accountList: ref
                            .read(userInfoProvider.notifier)
                            .getAccountNumbers(),
                        onChanged: (value) {
                          if (value != null) {
                            provider.updateAccountNumber(value);
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Amount",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: amountEditingController,
                        onChanged: (value) {
                          // Remove all non-digit characters
                          final newValue = value.replaceAll(RegExp(r'\D'), '');

                          // Convert the cleaned string to a number
                          int numberValue = int.tryParse(newValue) ?? 0;

                          provider.updateCentAmount(numberValue);
                        },
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
                        onPressed: withdrawState.buttonLoading
                            ? null
                            : () async {
                                // if the amount is empty, show toast message
                                if (withdrawState.centAmount == null) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Please enter amount"),
                                    ),
                                  );
                                  return;
                                }
                                // if the amount is less than 0 or equal, show toast message
                                if (withdrawState.centAmount == 0) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          "The amount must be greater than 0"),
                                    ),
                                  );
                                  return;
                                }

                                // disable button
                                provider.updateButtonLoading(true);

                                // show contents
                                logger.d("Withdraw button pressed");
                                logger.d(
                                    "Account number: ${withdrawState.accountNumber}");
                                logger.d("Amount: ${withdrawState.centAmount}");
                                // wait for 1 seconds
                                await Future.delayed(
                                    const Duration(seconds: 1));

                                provider.updateButtonLoading(false);
                              },
                        child: Text(withdrawState.withdrawButtonTxt),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
