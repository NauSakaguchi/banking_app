import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Transfer")),
      body: const Center(
        child: Text("Transfer"),
      ),
    );
  }
}
