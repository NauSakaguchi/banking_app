import 'package:banking_app/view/account/close_account/state/close_account_page_state.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'close_account_provider.g.dart';

@riverpod
class CloseAccountItems extends _$CloseAccountItems {
  @override
  CloseAccountPageState build() {
    ref.read(userInfoProvider.notifier).fetchAccounts().then((_) {
      final String num =
          ref.watch(userInfoProvider.notifier).getAccountNumbers()[0];
      updateAccountNumber(num);
      updateInitialized(true);
    });
    // get the first account number
    return const CloseAccountPageState();
  }

  void updateAccountNumber(String str) {
    state = state.copyWith(accountNumber: str);
  }

  void updateInitialized(bool initialized) {
    state = state.copyWith(initialized: initialized);
  }

  void updatePassword(String str) {
    state = state.copyWith(password: str);
  }

  void updateButtonStatus(bool isLoading) {
    if (isLoading) {
      state = state.copyWith(
        buttonLoading: isLoading,
        closeAccountButtonTxt: 'Closing Account...',
      );
    } else {
      state = state.copyWith(
        buttonLoading: isLoading,
        closeAccountButtonTxt: 'Close Account',
      );
    }
  }
}
