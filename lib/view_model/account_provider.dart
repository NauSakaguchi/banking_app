import 'package:banking_app/model/account/account.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_provider.g.dart';

@Riverpod(keepAlive: true)
class AccountInfo extends _$AccountInfo {
  @override
  Account build() {
    return const Account();
  }

  void updateAccountNumber(String accountNumber) {
    state = state.copyWith(accountNumber: accountNumber);
  }

  void updateRoutingNumber(String routingNumber) {
    state = state.copyWith(routingNumber: routingNumber);
  }

  void updateAccountType(AccountType accountType) {
    state = state.copyWith(accountType: accountType);
  }

  void updateBalance(int balance) {
    state = state.copyWith(centBalance: balance);
  }
}
