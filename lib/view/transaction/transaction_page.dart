import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransactionHistoryPage extends ConsumerWidget {
  final String accountNumber;
  const TransactionHistoryPage({Key? key, required this.accountNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        title: const Text("Transaction History"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: 10,
                itemBuilder: (itemBuilder, index) {
                  return _buildTransactionItem(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionItem(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: colorScheme.surface,
      child: Column(
        children: [],
      ),
    );
  }
}
