import 'dart:convert';

import 'package:banking_app/core/firebase/auth.dart';
import 'package:banking_app/infrastructure/netbank_api/netbank_api.dart';
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

  int getAccountBalance(String accountNumber) {
    final account = state.accounts.firstWhere(
      (element) => element.accountNumber == accountNumber,
    );
    return account.centBalance ?? 0;
  }

  Future<void> fetchUser() async {
    final authState = ref.watch(authProvider);
    if (authState.idToken == null) {
      logger.e('idToken is null');
      // throw exception
      throw Exception('idToken is null');
    }

    const endpoint = '/user';
    final response = await NetBankApi.getHttp(
      authState.idToken!,
      endpoint: endpoint,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseBody = jsonDecode(response.body);
      // String content = responseBody['choices'][0]['message']['content'];
      logger.d('Content: $responseBody');

      User _user = User(
        id: responseBody['uid'],
        firstName: responseBody['firstName'],
        middleName: responseBody['middleName'],
        lastName: responseBody['lastName'],
        streetAddress: responseBody['streetAddress'],
        city: responseBody['city'],
        state: responseBody['state'],
      );
      logger.d('fetchUser success');
      logger.d('user: $_user');

      state = _user;

      await fetchAccounts();
    } else {
      logger.e('Error: ${response.statusCode} ${response.reasonPhrase}');
      // throw exception
      throw Exception('Error: ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  Future<void> fetchAccounts() async {
    final authState = ref.watch(authProvider);
    if (authState.idToken == null) {
      logger.e('idToken is null');
      return;
    }

    //TODO: implement fetchAccounts with idToken
    const endpoint = '/accounts';
    final response = await NetBankApi.getHttp(
      authState.idToken!,
      endpoint: endpoint,
    );
    if (response.statusCode == 200) {
      final List<Account> _accounts = [];
      final List<dynamic> responseBodyList = jsonDecode(response.body);
      logger.d('Content: $responseBodyList');
      for (dynamic item in responseBodyList) {
        logger.d('Content: ${item['number']}');
        _accounts.add(
          Account(
            accountNumber: item['number'],
            routingNumber: item['routingNumber'],
            accountType: item['type'] ?? AccountType.checking.toDisplayString(),
            centBalance: (item['balance'] * 100).toInt(),
          ),
        );
      }
      logger.d('fetchAccounts success');
      logger.d('accounts: $_accounts');
      state = state.copyWith(accounts: _accounts);
    } else {
      logger.e("Error: ${response.statusCode} ${response.reasonPhrase}");
      throw Exception("Error: ${response.statusCode} ${response.reasonPhrase}");
    }
  }

  Future<List<Transaction>> fetchTransactions(String accountNumber) async {
    logger.d('accountNumber: $accountNumber');

    final authState = ref.watch(authProvider);
    if (authState.idToken == null) {
      logger.e('idToken is null');
      throw Exception('idToken is null');
    }

    //get idToken
    final idToken = ref.watch(authProvider).idToken;
    if (idToken == null) {
      logger.e('idToken is null');
      // throw exception
      throw Exception('idToken is null');
    }

    final response = await NetBankApi.getTransactionHttp(idToken,
        accountNumber: accountNumber);

    if (response.statusCode == 200) {
      final List<dynamic> responseBody = jsonDecode(response.body);
      final List<Transaction> _transactions = [];
      for (dynamic item in responseBody) {
        _transactions.add(
          Transaction(
            accountNumber: item['account']['number'],
            transactionType: item['description'],
            centAmount: (item['amount'] * 100).toInt(),
            timestamp: item['date'],
          ),
        );
      }

      logger.d('fetchTransactions success');
      logger.d('transactions: $_transactions');

      return _transactions;
    } else {
      logger.d(jsonDecode(response.body));
      logger.e('Error: ${response.statusCode} ${response.reasonPhrase}');
      // throw exception
      throw Exception('Error: ${response.statusCode} ${response.reasonPhrase}');
    }

    // // wait 1 sec to get dummy transactions
    // await Future.delayed(const Duration(seconds: 1));
    // final List<Transaction> _transactions = [
    //   Transaction(
    //     accountNumber: '111111111',
    //     transactionType: TransactionType.deposit,
    //     centAmount: 100000,
    //     timestamp: DateTime.now(),
    //   ),
    //   Transaction(
    //     accountNumber: '111111111',
    //     transactionType: TransactionType.withdrawal,
    //     centAmount: 100000,
    //     timestamp: DateTime.now(),
    //   ),
    //   Transaction(
    //     accountNumber: '111111111',
    //     transactionType: TransactionType.transfer,
    //     centAmount: 100000,
    //     timestamp: DateTime.now(),
    //   ),
    //   Transaction(
    //     accountNumber: '111111111',
    //     transactionType: TransactionType.withdrawal,
    //     centAmount: 100000,
    //     timestamp: DateTime.now(),
    //   ),
    //   Transaction(
    //     accountNumber: '111111111',
    //     transactionType: TransactionType.deposit,
    //     centAmount: 100000,
    //     timestamp: DateTime.now(),
    //   ),
    //   Transaction(
    //     accountNumber: '111111111',
    //     transactionType: TransactionType.withdrawal,
    //     centAmount: 100000,
    //     timestamp: DateTime.now(),
    //   ),
    //   Transaction(
    //     accountNumber: '111111111',
    //     transactionType: TransactionType.deposit,
    //     centAmount: 100000,
    //     timestamp: DateTime.now(),
    //   ),
    //   Transaction(
    //     accountNumber: '111111111',
    //     transactionType: TransactionType.withdrawal,
    //     centAmount: 100000,
    //     timestamp: DateTime.now(),
    //   ),
    //   Transaction(
    //     accountNumber: '111111111',
    //     transactionType: TransactionType.deposit,
    //     centAmount: 100000,
    //     timestamp: DateTime.now(),
    //   ),
    //   Transaction(
    //     accountNumber: '111111111',
    //     transactionType: TransactionType.withdrawal,
    //     centAmount: 100000,
    //     timestamp: DateTime.now(),
    //   ),
    // ];
  }
}
