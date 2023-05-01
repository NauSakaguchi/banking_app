import 'package:banking_app/component/account_picker.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/view/payment/state/payment_page_provider.dart';
import 'package:banking_app/view/style/balance_formatter.dart';
import 'package:banking_app/view/style/decorations.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PaymentPage extends HookConsumerWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    final paymentPageItems = ref.watch(paymentItemsProvider);
    final provider = ref.watch(paymentItemsProvider.notifier);

    // text controller
    final TextEditingController accountNumberController =
        useTextEditingController();
    final TextEditingController routingNumberController =
        useTextEditingController();
    final TextEditingController amountController = useTextEditingController();
    final TextEditingController memoController = useTextEditingController();

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(title: const Text("Payment")),
      body: paymentPageItems.initialized
          ? GestureDetector(
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
                        value: paymentPageItems.fromAccountNumber,
                        accountList: ref
                            .watch(userInfoProvider.notifier)
                            .getAccountNumbers(),
                        onChanged: (value) {
                          if (value != null)
                            provider.updateFromAccountNumber(value);
                        },
                      ),

                      const SizedBox(height: 20),
                      const Text(
                        "Pay to",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: accountNumberController,
                        // number keyboard
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          provider.updateToAccountNumber(value);
                        },
                        decoration: Decorations.inputDecoration(
                          "Account Number",
                          colorScheme,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: routingNumberController,
                        // number keyboard
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          provider.updateToRoutingNumber(value);
                        },
                        decoration: Decorations.inputDecoration(
                          "Routing Number",
                          colorScheme,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: amountController,
                        inputFormatters: [BalanceFormatter()],
                        onChanged: (value) {
                          // Remove all non-digit characters
                          final newValue = value.replaceAll(RegExp(r'\D'), '');

                          // Convert the cleaned string to a number
                          int numberValue = int.tryParse(newValue) ?? 0;

                          provider.updateCentAmount(numberValue);
                        },
                        // number keyboard
                        keyboardType: TextInputType.number,
                        decoration: Decorations.inputDecoration(
                          "Amount",
                          colorScheme,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: memoController,
                        onChanged: (value) {
                          provider.updateDescription(value);
                        },
                        decoration: Decorations.inputDecoration(
                          "Memo",
                          colorScheme,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: paymentPageItems.buttonLoading
                            ? null
                            : () async {
                                // if there is a empty field or null value, print error toast message
                                if (paymentPageItems.centAmount == null ||
                                    paymentPageItems.fromAccountNumber == "" ||
                                    paymentPageItems.toAccountNumber == "" ||
                                    paymentPageItems.toRoutingNumber == "" ||
                                    paymentPageItems.description == "") {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text("Please fill all the fields"),
                                    ),
                                  );
                                  return;
                                }

                                // if cent amount is less than 0 or equal, print error toast message
                                if (paymentPageItems.centAmount! <= 0) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text("Amount must be greater than 0"),
                                    ),
                                  );
                                  return;
                                }

                                // if all the fields are filled, show confirmation dialog
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text("Confirm Payment"),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "From: ${paymentPageItems.fromAccountNumber}",
                                            ),
                                            Text(
                                              "To: ${paymentPageItems.toAccountNumber}",
                                            ),
                                            Text(
                                              "Amount: \$${paymentPageItems.centAmount! / 100}",
                                            ),
                                            Text(
                                              "Memo: ${paymentPageItems.description}",
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color:
                                                      colorScheme.onBackground),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () async {
                                              provider.updateButtonStatus(true);
                                              Navigator.pop(context);

                                              // print log
                                              logger.d(
                                                  "from: ${paymentPageItems.fromAccountNumber}");
                                              logger.d(
                                                  "to: ${paymentPageItems.toAccountNumber}");
                                              logger.d(
                                                  "routing: ${paymentPageItems.toRoutingNumber}");
                                              logger.d(
                                                  "amount: ${paymentPageItems.centAmount}");
                                              logger.d(
                                                  "memo: ${paymentPageItems.description}");

                                              // wait for 2 sec
                                              await Future.delayed(
                                                  const Duration(seconds: 2));
                                              provider
                                                  .updateButtonStatus(false);
                                            },
                                            child: const Text("Confirm"),
                                          ),
                                        ],
                                      );
                                    });
                              },
                        child: Text(paymentPageItems.payButtonTxt),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
