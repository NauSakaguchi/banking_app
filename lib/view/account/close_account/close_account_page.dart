import 'package:flutter/material.dart';

class CloseAccountPage extends StatelessWidget {
  const CloseAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Close Account")),
      body: const Center(
        child: Text("Close Account"),
      ),
    );
  }
}
