import 'package:banking_app/core/firebase/auth.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/model/account/account.dart';
import 'package:banking_app/model/transaction/transaction.dart';
import 'package:banking_app/model/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class UserInfo extends _$UserInfo {
  @override
  User build() {
    return const User();
  }

  void updateUID(String id) {
    state = state.copyWith(id: id);
  }

  List<String> getAccountNumbers() {
    final numbers = state.accounts.map((e) => e.accountNumber).toList();
    return numbers;
  }

  Future<void> fetchUser() async {
    final authState = ref.watch(authProvider);
    if (authState.idToken == null) {
      logger.e('idToken is null');
      return;
    }
    // TODO: implement fetchUser with idToken
    // wait 1 sec to get dummy user
    await Future.delayed(const Duration(seconds: 1));
    const User _user = User(
      id: '1234567890',
      firstName: 'John',
      middleName: 'D',
      lastName: 'Doe',
      streetAddress: '123 Main St',
      city: 'Anytown',
      state: 'CA',
    );
    logger.d('fetchUser success');
    logger.d('user: $_user');

    state = _user;

    // TODO: implement fetchAccounts with idToken
    await fetchAccounts();
  }

  Future<void> fetchAccounts() async {
    final authState = ref.watch(authProvider);
    if (authState.idToken == null) {
      logger.e('idToken is null');
      return;
    }

    //TODO: implement fetchAccounts with idToken

    //wait 1 sec to get dummy accounts
    await Future.delayed(const Duration(seconds: 1));
    const List<Account> _accounts = [
      Account(
        accountNumber: '111111111',
        routingNumber: '123456789',
        accountType: AccountType.checking,
        centBalance: 100000,
      ),
      Account(
        accountNumber: '222222222',
        routingNumber: '123456789',
        accountType: AccountType.saving,
        centBalance: 200010,
      ),
      Account(
        accountNumber: '333333333',
        routingNumber: '123456789',
        accountType: AccountType.checking,
        centBalance: 300000,
      ),
      Account(
        accountNumber: '444444444',
        routingNumber: '123456789',
        accountType: AccountType.saving,
        centBalance: 400034,
      ),
    ];
    logger.d('fetchAccounts success');
    logger.d('accounts: $_accounts');

    state = state.copyWith(accounts: _accounts);
  }

  Future<List<Transaction>> fetchTransactions(String accountNumber) async {
    final authState = ref.watch(authProvider);
    if (authState.idToken == null) {
      logger.e('idToken is null');
      return [];
    }

    //TODO: implement fetchTransactions with idToken

    // wait 1 sec to get dummy transactions
    await Future.delayed(const Duration(seconds: 1));
    final List<Transaction> _transactions = [
      Transaction(
        accountNumber: '111111111',
        transactionType: TransactionType.deposit,
        centAmount: 100000,
        timestamp: DateTime.now(),
      ),
      Transaction(
        accountNumber: '111111111',
        transactionType: TransactionType.withdrawal,
        centAmount: 100000,
        timestamp: DateTime.now(),
      ),
      Transaction(
        accountNumber: '111111111',
        transactionType: TransactionType.transfer,
        centAmount: 100000,
        timestamp: DateTime.now(),
      ),
      Transaction(
        accountNumber: '111111111',
        transactionType: TransactionType.withdrawal,
        centAmount: 100000,
        timestamp: DateTime.now(),
      ),
      Transaction(
        accountNumber: '111111111',
        transactionType: TransactionType.deposit,
        centAmount: 100000,
        timestamp: DateTime.now(),
      ),
      Transaction(
        accountNumber: '111111111',
        transactionType: TransactionType.withdrawal,
        centAmount: 100000,
        timestamp: DateTime.now(),
      ),
      Transaction(
        accountNumber: '111111111',
        transactionType: TransactionType.deposit,
        centAmount: 100000,
        timestamp: DateTime.now(),
      ),
      Transaction(
        accountNumber: '111111111',
        transactionType: TransactionType.withdrawal,
        centAmount: 100000,
        timestamp: DateTime.now(),
      ),
      Transaction(
        accountNumber: '111111111',
        transactionType: TransactionType.deposit,
        centAmount: 100000,
        timestamp: DateTime.now(),
      ),
      Transaction(
        accountNumber: '111111111',
        transactionType: TransactionType.withdrawal,
        centAmount: 100000,
        timestamp: DateTime.now(),
      ),
    ];
    logger.d('fetchTransactions success');
    logger.d('transactions: $_transactions');

    return _transactions;
  }
}
