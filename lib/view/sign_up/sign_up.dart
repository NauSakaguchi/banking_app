import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/route/route_path.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/view/sign_up/sign_up_state/sign_up_page_provider.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up (1/2)"),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SignUpForm(),
      ),
    );
  }
}

class SignUpForm extends HookConsumerWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // text controller
    final TextEditingController emailController = useTextEditingController();
    final TextEditingController passwordController = useTextEditingController();
    final TextEditingController confirmPasswordController =
        useTextEditingController();

    final pageState = ref.watch(signUpPageProvider);
    final pageProvider = ref.read(signUpPageProvider.notifier);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "Enter your email",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                pageProvider.updateEmail(value);
              },
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "Email",
              ),
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
                pageProvider.updatePassword(value);
              },
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Confirm your password",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            TextField(
              obscureText: true,
              controller: confirmPasswordController,
              onChanged: (value) {
                pageProvider.updateConfirmPassword(value);
              },
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                //show log
                logger.d("email: ${pageState.email}");
                logger.d("password: ${pageState.password}");
                logger.d("confirm password: ${pageState.confirmPassword}");

                final error = _validateFields(pageState.email,
                    pageState.password, pageState.confirmPassword);
                if (error != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(error),
                    ),
                  );
                  return;
                }

                context.router.pushNamed(RoutePath.registerRoute);
              },
              child: const Text("Next Step"),
            ),
          ],
        ),
      ),
    );
  }

  String? _validateFields(
      String email, String password, String confirmPassword) {
    if (!EmailValidator.validate(email)) {
      return "Please enter a valid email";
    }
    if (password != confirmPassword) {
      return "Password does not match";
    }
    if (password.length < 8) {
      return "Password must be at least 8 characters";
    }
    return null;
  }
}
