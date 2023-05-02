import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdraw_page_state.freezed.dart';

//State for withdraw page
// This is a freezed class
// https://pub.dev/packages/freezed
@freezed
class WithdrawPageState with _$WithdrawPageState {
  // accountNumber, routingNumber, accountType, balance are default values
  // buttonLoading is false
  // openAccountButtonTxt is 'Open Account'
  const factory WithdrawPageState({
    String? accountNumber,
    int? centAmount,
    @Default(false) bool buttonLoading,
    @Default('Withdraw') String withdrawButtonTxt,
    @Default(false) bool initialized,
  }) = _WithdrawPageState;
}
