import 'package:banking_app/main.dart';
import 'package:banking_app/view/account/open_account/state/open_account_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OpenAccountPage extends HookConsumerWidget {
  const OpenAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final openAccountItems = ref.watch(openAccountItemsProvider);
    final provider = ref.watch(openAccountItemsProvider.notifier);
    final List<String> accountTypes = ["Savings", "Checking"];

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(title: const Text("Open Account")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // chose account type: savings or checking
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: colorScheme.onPrimaryContainer),
                  borderRadius: BorderRadius.circular(5),
                  color: colorScheme.surface,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                child: Row(
                  children: [
                    const Text("Account Type: ",
                        style: TextStyle(fontSize: 18)),
                    const Expanded(child: SizedBox()),
                    // dropdown button for account type
                    DropdownButton(
                      value: openAccountItems.accountType,
                      onChanged: (newValue) {
                        if (newValue != null) {
                          if (newValue == accountTypes[0]) {
                            logger.d("Should be Savings: $newValue");
                            assert(newValue == "Savings");
                            provider.updateAccountType(newValue);
                          } else if (newValue == accountTypes[1]) {
                            logger.d("Should be Checking: $newValue");
                            assert(newValue == "Checking");
                            provider.updateAccountType(newValue);
                          } else {
                            logger.d("Should not be here: $newValue");
                            assert(false);
                          }
                        }
                      },
                      items:
                          accountTypes.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                              style: TextStyle(
                                  fontSize: 20, color: colorScheme.primary)),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: openAccountItems.buttonLoading
                    ? null
                    : () async {
                        logger
                            .d("Account Type: ${openAccountItems.accountType}");
                        // wait 3 seconds
                        await provider.onSubmit();
                        // back to previous page
                        Navigator.pop(context);
                      },
                child: Text(openAccountItems.openAccountButtonTxt),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
