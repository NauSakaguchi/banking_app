import 'package:banking_app/component/account_picker.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/view/style/balance_formatter.dart';
import 'package:banking_app/view/style/decorations.dart';
import 'package:banking_app/view/transfer/state/transfer_page_provider.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransferPage extends HookConsumerWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transferPageState = ref.watch(transferPageStateNotifierProvider);
    final notifier = ref.read(transferPageStateNotifierProvider.notifier);

    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    // textController to get the value of the text field
    final TextEditingController centAmountController =
        useTextEditingController();
    final TextEditingController descriptionController =
        useTextEditingController(text: transferPageState.description);

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
                  value: transferPageState.fromAccountNumber,
                  accountList:
                      ref.watch(userInfoProvider.notifier).getAccountNumbers(),
                  onChanged: (value) {
                    if (value != null) notifier.updateFromAccountNumber(value);
                  },
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
                  value: transferPageState.toAccountNumber,
                  accountList:
                      ref.watch(userInfoProvider.notifier).getAccountNumbers(),
                  onChanged: (value) {
                    if (value != null) notifier.updateToAccountNumber(value);
                  },
                ),

                // Amount
                const SizedBox(height: 20),
                TextField(
                  controller: centAmountController,
                  inputFormatters: [BalanceFormatter()],
                  // number keyboard
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // Remove all non-digit characters
                    final newValue = value.replaceAll(RegExp(r'\D'), '');

                    // Convert the cleaned string to a number
                    int numberValue = int.tryParse(newValue) ?? 0;
                    logger.d("centAmount: $numberValue");
                    notifier.updateAmount(numberValue);
                  },
                  decoration: Decorations.inputDecoration(
                    "Amount",
                    colorScheme,
                  ),
                ),

                const SizedBox(height: 20),
                TextField(
                  controller: descriptionController,
                  onChanged: (value) {
                    notifier.updateDescription(value);
                  },
                  decoration: Decorations.inputDecoration(
                    "Description (Optional)",
                    colorScheme,
                  ),
                ),

                // Transfer Button
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: transferPageState.buttonLoading
                      ? null
                      : () async {
                          // if there is null value or empty string or 0, show error toast message
                          if (transferPageState.centAmount == null ||
                              transferPageState.centAmount == 0) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Please fill all the fields"),
                              ),
                            );
                          } else if (transferPageState.fromAccountNumber ==
                              transferPageState.toAccountNumber) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text("Cannot transfer to the same account"),
                              ),
                            );
                          } else {
                            final centAmountTxt =
                                "Transfer \$${(transferPageState.centAmount! / 100).toStringAsFixed(2)}";
                            final fromTxt =
                                " from ${transferPageState.fromAccountNumber}";
                            final toTxt =
                                " to ${transferPageState.toAccountNumber}";

                            // if all the fields are filled, show confirmation dialog
                            final bool? result = await showDialog<bool>(
                              context: context,
                              builder: (context) {
                                final ColorScheme colorScheme =
                                    Theme.of(context).colorScheme;
                                return AlertDialog(
                                  title: const Text("Confirm Transfer"),
                                  content: Text("$centAmountTxt"
                                      "\n   $fromTxt"
                                      "\n   $toTxt?"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context, false);
                                      },
                                      child: Text("Cancel",
                                          style: TextStyle(
                                              color: colorScheme.onBackground)),
                                    ),
                                    const SizedBox(width: 10),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context, true);
                                      },
                                      child: const Text("Confirm"),
                                    ),
                                  ],
                                );
                              },
                            );

                            // if user confirms, transfer the money
                            if (result == true) {
                              notifier.updateButtonStatus(true);

                              logger.d("Transfer confirmed");
                              // wait for 2 seconds
                              await Future.delayed(const Duration(seconds: 2));

                              notifier.updateButtonStatus(false);
                            } else {
                              logger.d("Transfer cancelled");
                            }
                          }
                        },
                  child: Text(transferPageState.transferButtonTxt),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
