import 'package:banking_app/component/account_picker.dart';
import 'package:banking_app/core/firebase/auth.dart';
import 'package:banking_app/core/hooks/useFlutterToast.dart';
import 'package:banking_app/view/account/close_account/state/close_account_provider.dart';
import 'package:banking_app/view/style/decorations.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CloseAccountPage extends HookConsumerWidget {
  const CloseAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final closeAccountItems = ref.watch(closeAccountItemsProvider);
    final provider = ref.watch(closeAccountItemsProvider.notifier);
    final toast = useFlutterToast();

    //text controller
    final TextEditingController passwordController = useTextEditingController(
      text: closeAccountItems.password,
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Close Account")),
      body: closeAccountItems.initialized
          ? GestureDetector(
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
                        value: closeAccountItems.accountNumber,
                        accountList: ref
                            .watch(userInfoProvider.notifier)
                            .getAccountNumbers(),
                        onChanged: (value) {
                          if (value != null)
                            provider.updateAccountNumber(value);
                        },
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Enter your password",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        controller: passwordController,
                        onChanged: (value) {
                          provider.updatePassword(value);
                        },
                        decoration: Decorations.inputDecoration(
                          "Password",
                          colorScheme,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: closeAccountItems.buttonLoading
                            ? null
                            : () async {
                                provider.updateButtonStatus(true);

                                final String? errorMessage = await ref
                                    .read(authProvider.notifier)
                                    .singIn(
                                      username: ref.watch(authProvider).email!,
                                      password: closeAccountItems.password,
                                    );
                                if (errorMessage == null) {
                                  await provider.deleteAccount();
                                  toast.showInfoToast("Account closed");
                                  // back to the page
                                  Navigator.of(context).pop();
                                } else {
                                  toast.showErrorToast(errorMessage);
                                }
                                provider.updateButtonStatus(false);
                              },
                        child: Text(closeAccountItems.closeAccountButtonTxt),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
