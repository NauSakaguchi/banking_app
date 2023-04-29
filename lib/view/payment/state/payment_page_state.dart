import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_page_state.freezed.dart';

//State for payment page
// This is a freezed class
// https://pub.dev/packages/freezed
@freezed
class PaymentPageState with _$PaymentPageState {
  // accountNumber, routingNumber, accountType, balance are default values
  // buttonLoading is false
  // openAccountButtonTxt is 'Open Account'
  const factory PaymentPageState({
    @Default(<String>[]) List<String> accounts,
    @Default('') String fromAccountNumber,
    @Default('') String toAccountNumber,
    @Default('') String toRoutingNumber,
    int? amount,
    @Default('') String description,
    @Default(false) bool buttonLoading,
    @Default('Pay') String payButtonTxt,
  }) = _PaymentPageState;
}
