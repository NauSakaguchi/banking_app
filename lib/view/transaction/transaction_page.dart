import 'package:banking_app/core/ui_core/cent_balance_formatter.dart';
import 'package:banking_app/core/ui_core/date_time_formatter.dart';
import 'package:banking_app/model/transaction/transaction.dart';
import 'package:banking_app/view/transaction/state/transaction_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransactionHistoryPage extends ConsumerWidget {
  final String accountNumber;
  const TransactionHistoryPage({Key? key, required this.accountNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionHistoryState = ref.watch(transactionItemsProvider);
    final provider = ref.watch(transactionItemsProvider.notifier);
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        title: const Text("Transaction History"),
      ),
      body: transactionHistoryState.initialized
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: transactionHistoryState.transactions.length,
                itemBuilder: (itemBuilder, index) {
                  return _buildTransactionItem(context,
                      transaction: transactionHistoryState.transactions[index]);
                },
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildTransactionItem(
    BuildContext context, {
    required Transaction transaction,
  }) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: colorScheme.surface,
      child: Column(
        children: [
          ListTile(
            title: Text(
              transaction.transactionType.toDisplayString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              DateTimeFormatter.convertDateTimeToString(transaction.timestamp),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              CentBalanceFormatter.toDollarString(transaction.centAmount),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
