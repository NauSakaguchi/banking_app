import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_deposit_page_state.freezed.dart';

//State for check deposit page
// This is a freezed class
// https://pub.dev/packages/freezed
@freezed
class CheckDepositPageState with _$CheckDepositPageState {
  // checkAmount is default value
  // buttonLoading is false
  // depositButtonTxt is 'Deposit'
  const factory CheckDepositPageState({
    @Default('') String fromAccountNumber,
    @Default('') String routingNumber,
    required String toAccountNumber,
    int? checkAmount,
    DateTime? checkDate,
    File? checkFrontImage,
    File? checkBackImage,
    @Default(false) bool buttonLoading,
    @Default('Deposit') String depositButtonTxt,
  }) = _CheckDepositPageState;
}
