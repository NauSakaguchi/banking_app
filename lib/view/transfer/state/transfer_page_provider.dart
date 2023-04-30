import 'package:banking_app/view_model/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'transfer_page_state.dart';

part 'transfer_page_provider.g.dart';

@riverpod
class TransferPageStateNotifier extends _$TransferPageStateNotifier {
  @override
  TransferPageState build() {
    final String num =
        ref.watch(userInfoProvider.notifier).getAccountNumbers()[0];
    return TransferPageState(fromAccountNumber: num, toAccountNumber: num);
  }

  void updateToAccountNumber(String str) {
    state = state.copyWith(toAccountNumber: str);
  }

  void updateFromAccountNumber(String str) {
    state = state.copyWith(fromAccountNumber: str);
  }

  void updateAmount(int amount) {
    state = state.copyWith(amount: amount);
  }

  void updateDescription(String description) {
    state = state.copyWith(description: description);
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
