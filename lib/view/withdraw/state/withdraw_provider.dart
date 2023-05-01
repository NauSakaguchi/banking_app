import 'package:banking_app/view/withdraw/state/withdraw_page_state.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'withdraw_provider.g.dart';

@riverpod
class WithdrawItems extends _$WithdrawItems {
  @override
  WithdrawPageState build() {
    ref.read(userInfoProvider.notifier).fetchAccounts().then((_) {
      final String num =
          ref.watch(userInfoProvider.notifier).getAccountNumbers()[0];
      updateAccountNumber(num);
      updateInitialized(true);
    });
    return const WithdrawPageState();
  }

  void updateAccountNumber(String accountNumber) {
    state = state.copyWith(accountNumber: accountNumber);
  }

  void updateCentAmount(int centAmount) {
    state = state.copyWith(centAmount: centAmount);
  }

  void updateButtonLoading(bool buttonLoading) {
    if (buttonLoading) {
      state = state.copyWith(
        buttonLoading: buttonLoading,
        withdrawButtonTxt: 'Processing Withdraw...',
      );
    } else {
      state = state.copyWith(
        buttonLoading: buttonLoading,
        withdrawButtonTxt: 'Withdraw',
      );
    }
  }

  void updateWithdrawButtonTxt(String withdrawButtonTxt) {
    state = state.copyWith(withdrawButtonTxt: withdrawButtonTxt);
  }

  void updateInitialized(bool initialized) {
    state = state.copyWith(initialized: initialized);
  }
}
