import 'dart:io';

import 'package:banking_app/core/firebase/auth.dart';
import 'package:banking_app/infrastructure/netbank_api/netbank_api.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'check_deposit_page_state.dart';

part 'check_deposit_provider.g.dart';

@riverpod
class CheckDepositItems extends _$CheckDepositItems {
  @override
  CheckDepositPageState build() {
    ref.read(userInfoProvider.notifier).fetchAccounts().then((_) {
      final String num =
          ref.watch(userInfoProvider.notifier).getAccountNumbers()[0];
      updateToAccountNumber(num);
      updateInitialized(true);
    });
    return const CheckDepositPageState();
  }

  void updateInitialized(bool initialized) {
    state = state.copyWith(initialized: initialized);
  }

  void updateToAccountNumber(String str) {
    state = state.copyWith(toAccountNumber: str);
  }

  void updateCheckAmount(int centAmount) {
    state = state.copyWith(checkAmount: centAmount);
  }

  void updateFromAccountNumber(String str) {
    state = state.copyWith(fromAccountNumber: str);
  }

  void updateRoutingNumber(String str) {
    state = state.copyWith(routingNumber: str);
  }

  void updateCheckDate(DateTime date) {
    state = state.copyWith(checkDate: date);
  }

  void updateCheckFrontImage(File file) {
    state = state.copyWith(checkFrontImage: file);
  }

  void removeCheckFrontImage() {
    state = state.copyWith(checkFrontImage: null);
  }

  void updateCheckBackImage(File file) {
    state = state.copyWith(checkBackImage: file);
  }

  void removeCheckBackImage() {
    state = state.copyWith(checkBackImage: null);
  }

  void updateButtonStatus(bool isLoading) {
    if (isLoading) {
      state = state.copyWith(
        buttonLoading: isLoading,
        depositButtonTxt: 'Depositing...',
      );
    } else {
      state = state.copyWith(
        buttonLoading: isLoading,
        depositButtonTxt: 'Deposit',
      );
    }
  }

  Future<void> submitCheckDeposit() async {
    final idToken = ref.watch(authProvider).idToken;
    if (idToken == null) {
      logger.e('idToken is null');
      // throw exception
      throw Exception('idToken is null');
    }

    final String fromAccountNumber = state.fromAccountNumber;
    final String fromRoutingNumber = state.routingNumber;
    final String toAccountNumber = state.toAccountNumber!;
    final String toRoutingNumber =
        ref.watch(userInfoProvider).accounts[0].routingNumber;
    const String description = "check deposit";
    final double dollarAmount = state.checkAmount!.toDouble() / 100.0;

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
}
