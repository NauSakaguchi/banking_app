import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/route/route_path.dart';
import 'package:flutter/material.dart';

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

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
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
              onChanged: (value) {},
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
              onChanged: (value) {},
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
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                context.router.pushNamed(RoutePath.registerRoute);
              },
              child: const Text("Next Step"),
            ),
          ],
        ),
      ),
    );
  }
}
