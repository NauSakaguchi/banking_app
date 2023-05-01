import 'package:banking_app/model/transaction/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_page_state.freezed.dart';

//State for transaction page
// This is a freezed class
// https://pub.dev/packages/freezed
@freezed
class TransactionPageState with _$TransactionPageState {
  // accountNumber, routingNumber, accountType, balance are default values
  // buttonLoading is false
  // openAccountButtonTxt is 'Open Account'
  const factory TransactionPageState({
    @Default(<Transaction>[]) List<Transaction> transactions,
    @Default(false) bool initialized,
    @Default(false) bool buttonLoading,
  }) = _TransactionPageState;
}
