import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_page_state.freezed.dart';

//State for account page
// This is a freezed class
// https://pub.dev/packages/freezed
@freezed
class AccountPageState with _$AccountPageState {
  // accountNumber, routingNumber, accountType, balance are default values
  // buttonLoading is false
  // openAccountButtonTxt is 'Open Account'
  const factory AccountPageState({
    @Default(false) bool initialized,
  }) = _AccountPageState;
}
