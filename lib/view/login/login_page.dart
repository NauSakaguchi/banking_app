import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/string/globar_string.dart';
import 'package:banking_app/constant/string/login_string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          _backGround(context),
          Align(
            alignment: const Alignment(0, 0.5),
            child: _loginBox(context),
          ),
        ],
      ),
    );
  }

  Widget _loginBox(BuildContext context) {
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
          const TextField(),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                LoginString.password,
                style: TextStyle(color: colorScheme.onBackground),
              ),
            ],
          ),
          const TextField(),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () => context.router.pushNamed('/top'),
            child: const Text(LoginString.signIn),
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
