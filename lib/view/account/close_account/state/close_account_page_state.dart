import 'package:freezed_annotation/freezed_annotation.dart';

part 'close_account_page_state.freezed.dart';

//State for close account page
// This is a freezed class
// https://pub.dev/packages/freezed

@freezed
class CloseAccountPageState with _$CloseAccountPageState {
  // accountNumber, routingNumber, accountType, balance are default values
  // buttonLoading is false
  // openAccountButtonTxt is 'Open Account'
  const factory CloseAccountPageState({
    @Default(<String>[]) List<String> accounts,
    @Default('') String password,
    @Default(false) bool buttonLoading,
    @Default('Close Account') String closeAccountButtonTxt,
  }) = _CloseAccountPageState;
}
