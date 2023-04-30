import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_account_page_state.freezed.dart';

//State for open account page
// This is a freezed class
// https://pub.dev/packages/freezed
@freezed
class OpenAccountPageState with _$OpenAccountPageState {
  // accountNumber, routingNumber, accountType, balance are default values
  // buttonLoading is false
  // openAccountButtonTxt is 'Open Account'
  const factory OpenAccountPageState({
    @Default(<String>[]) List<String> accounts,
    @Default('Savings') String accountType,
    @Default(false) bool buttonLoading,
    @Default('Open Account') String openAccountButtonTxt,
  }) = _OpenAccountPageState;
}
