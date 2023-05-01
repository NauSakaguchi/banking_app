import 'package:banking_app/view/payment/state/payment_page_state.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_page_provider.g.dart';

@riverpod
class PaymentItems extends _$PaymentItems {
  @override
  PaymentPageState build() {
    ref.read(userInfoProvider.notifier).fetchAccounts().then((_) {
      final String num =
          ref.watch(userInfoProvider.notifier).getAccountNumbers()[0];
      updateFromAccountNumber(num);
      updateInitialized(true);
    });
    return const PaymentPageState();
  }

  void updateInitialized(bool initialized) {
    state = state.copyWith(initialized: initialized);
  }

  // update fromAccountNumber
  void updateFromAccountNumber(String str) {
    state = state.copyWith(fromAccountNumber: str);
  }

  // update toAccountNumber
  void updateToAccountNumber(String str) {
    state = state.copyWith(toAccountNumber: str);
  }

  // update toRoutingNumber
  void updateToRoutingNumber(String str) {
    state = state.copyWith(toRoutingNumber: str);
  }

  // update centAmount
  void updateCentAmount(int? amount) {
    state = state.copyWith(centAmount: amount);
  }

  // update description
  void updateDescription(String str) {
    state = state.copyWith(description: str);
  }

  // update button status
  void updateButtonStatus(bool isLoading) {
    if (isLoading) {
      state = state.copyWith(
        buttonLoading: isLoading,
        payButtonTxt: 'Processing Payment...',
      );
    } else {
      state = state.copyWith(
        buttonLoading: isLoading,
        payButtonTxt: 'Make Payment',
      );
    }
  }
}
