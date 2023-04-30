import 'package:flutter/material.dart';

class TransactionHistoryPage extends StatelessWidget {
  final String accountNumber;
  const TransactionHistoryPage({Key? key, required this.accountNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction History"),
      ),
      body: Center(child: Text("Transaction of $accountNumber")),
    );
  }
}
