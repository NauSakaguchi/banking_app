import 'package:flutter/material.dart';

class OpenAccountPage extends StatelessWidget {
  const OpenAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Open Account")),
      body: const Center(
        child: Text("Open Account"),
      ),
    );
  }
}
