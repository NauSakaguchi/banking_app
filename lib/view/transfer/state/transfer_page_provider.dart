import 'package:banking_app/core/firebase/auth.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/netbank_api/netbank_api.dart';
import 'transfer_page_state.dart';

part 'transfer_page_provider.g.dart';

@riverpod
class TransferPageStateNotifier extends _$TransferPageStateNotifier {
  @override
  TransferPageState build() {
    ref.read(userInfoProvider.notifier).fetchAccounts().then((_) {
      final String num =
          ref.watch(userInfoProvider.notifier).getAccountNumbers()[0];
      updateFromAccountNumber(num);
      updateToAccountNumber(num);
      updateInitialized(true);
    });
    return const TransferPageState();
  }

  Future<void> transferMoney() async {
    final idToken = ref.watch(authProvider).idToken;
    if (idToken == null) {
      logger.e('idToken is null');
      // throw exception
      throw Exception('idToken is null');
    }

    final String fromAccountNumber = state.fromAccountNumber!;
    final String fromRoutingNumber =
        ref.watch(userInfoProvider).accounts[0].routingNumber;
    final String toAccountNumber = state.toAccountNumber!;
    final String toRoutingNumber =
        ref.watch(userInfoProvider).accounts[0].routingNumber;
    final String description = state.description;
    final double dollarAmount = state.centAmount!.toDouble() / 100.0;

    await NetBankApi.transferMethod(
      idToken,
      fromAccountNumber,
      fromRoutingNumber,
      toAccountNumber,
      toRoutingNumber,
      dollarAmount,
      description,
    );
  }

  void updateToAccountNumber(String str) {
    state = state.copyWith(toAccountNumber: str);
  }

  void updateFromAccountNumber(String str) {
    state = state.copyWith(fromAccountNumber: str);
  }

  void updateAmount(int centAmount) {
    state = state.copyWith(centAmount: centAmount);
  }

  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }

  void updateInitialized(bool initialized) {
    state = state.copyWith(initialized: initialized);
  }

  void updateButtonStatus(bool isLoading) {
    if (isLoading) {
      state = state.copyWith(
        buttonLoading: isLoading,
        transferButtonTxt: 'Transferring...',
      );
    } else {
      state = state.copyWith(
        buttonLoading: isLoading,
        transferButtonTxt: 'Transfer',
      );
    }
  }
}
