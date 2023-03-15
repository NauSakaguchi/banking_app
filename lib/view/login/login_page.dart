import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.pushNamed('/top');
          },
          child: const Text('hello'),
        ),
      ),
    );
  }
}
