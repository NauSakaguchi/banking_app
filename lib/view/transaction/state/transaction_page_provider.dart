import 'package:banking_app/view/transaction/state/transaction_page_state.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'transaction_page_provider.g.dart';

@riverpod
class TransactionItems extends _$TransactionItems {
  @override
  TransactionPageState build(String accountNumber) {
    updateTransactions(accountNumber).then((value) {
      updateInitialized(true);
    });
    return const TransactionPageState();
  }

  Future<void> updateTransactions(String accountNumber) async {
    final transactions = await ref
        .read(userInfoProvider.notifier)
        .fetchTransactions(accountNumber);
    state = state.copyWith(transactions: transactions);
  }

  void updateInitialized(bool initialized) {
    state = state.copyWith(initialized: initialized);
  }

  void updateButtonLoading(bool buttonLoading) {
    state = state.copyWith(buttonLoading: buttonLoading);
  }
}
