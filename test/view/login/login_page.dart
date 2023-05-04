import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/route/route_path.dart';
import 'package:banking_app/constant/string/globar_string.dart';
import 'package:banking_app/constant/string/login_string.dart';
import 'package:banking_app/core/firebase/auth.dart';
import 'package:banking_app/core/hooks/useFlutterToast.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/view/login/state/login_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          fit: StackFit.expand,
          children: [
            _backGround(context),
            Align(
              alignment: const Alignment(0, 0.5),
              child: _loginBox(context, ref),
            ),
          ],
        ),
      ),
    );
  }

  Widget _loginBox(BuildContext context, WidgetRef ref) {
    final loginItems = ref.watch(loginItemsProvider);
    final notifier = ref.watch(loginItemsProvider.notifier);
    final usernameEditingController =
        useTextEditingController(text: loginItems.username);
    final passwordEditingController =
        useTextEditingController(text: loginItems.password);
    final toast = useFlutterToast();

    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border.all(color: colorScheme.onPrimaryContainer),
        borderRadius: BorderRadius.circular(3),
      ),
      padding: const EdgeInsets.all(12),
      width: deviceWidth * 0.8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                LoginString.username,
                style: TextStyle(color: colorScheme.onBackground),
              ),
            ],
          ),
          TextField(
            controller: usernameEditingController,
            onChanged: (str) {
              notifier.updateUserName(str);
            },
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                LoginString.password,
                style: TextStyle(color: colorScheme.onBackground),
              ),
            ],
          ),
          TextField(
            obscureText: true,
            controller: passwordEditingController,
            onChanged: (str) {
              notifier.updatePassword(str);
            },
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: loginItems.buttonLoading
                ? null
                : () async {
                    notifier.updateButtonStatus(true, colorScheme);
                    logger.d('Username: ${loginItems.username}');
                    logger.d('Password: ${loginItems.password}');

                    final String? errorMessage =
                        await ref.read(authProvider.notifier).signIn(
                              username: loginItems.username,
                              password: loginItems.password,
                            );
                    notifier.updateButtonStatus(false, colorScheme);
                    if (errorMessage == null) {
                      context.router.pushNamed(RoutePath.topRoute);
                    } else {
                      toast.showErrorToast(errorMessage);
                      return;
                    }
                  },
            child: Text(loginItems.signInButtonTxt),
          ),
          const Text(LoginString.forgot),
        ],
      ),
    );
  }

  Widget _backGround(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: deviceWidth,
      height: deviceHeight,
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: colorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.all(60),
                child: Align(
                  alignment: const Alignment(0, -0.7),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      GlobalString.APP_NAME,
                      style: GoogleFonts.stickNoBills(
                        color: colorScheme.onPrimary,
                        fontSize: 250,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.3,
          ),
        ],
      ),
    );
  }
}
