import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'open_account_page_state.dart';

part 'open_account_provider.g.dart';

@riverpod
class OpenAccountItems extends _$OpenAccountItems {
  @override
  OpenAccountPageState build() {
    return const OpenAccountPageState();
  }

  void updateAccountName(String str) {
    state = state.copyWith(accountName: str);
  }

  void updateAccountType(String str) {
    state = state.copyWith(accountType: str);
  }

  void updateButtonStatus(bool isLoading) {
    if (isLoading) {
      state = state.copyWith(
        buttonLoading: isLoading,
        openAccountButtonTxt: 'Opening Account...',
      );
    } else {
      state = state.copyWith(
        buttonLoading: isLoading,
        openAccountButtonTxt: 'Open Account',
      );
    }
  }
}
