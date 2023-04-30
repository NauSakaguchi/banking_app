import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_page_state.freezed.dart';

//State for transfer page
// This is a freezed class
// https://pub.dev/packages/freezed
@freezed
class TransferPageState with _$TransferPageState {
  // accountNumber, routingNumber, accountType, balance are default values
  // buttonLoading is false
  // openAccountButtonTxt is 'Open Account'
  const factory TransferPageState({
    required String fromAccountNumber,
    required String toAccountNumber,
    int? centAmount,
    @Default("") String description,
    @Default(false) bool buttonLoading,
    @Default('Transfer') String transferButtonTxt,
  }) = _TransferPageState;
}
