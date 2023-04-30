import 'package:banking_app/model/chat_text/chat_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'information_page_state.freezed.dart';

//State for information page
// This is a freezed class
// https://pub.dev/packages/freezed
@freezed
class InformationPageState with _$InformationPageState {
  // accountNumber, routingNumber, accountType, balance are default values
  // buttonLoading is false
  // openAccountButtonTxt is 'Open Account'
  const factory InformationPageState({
    @Default("") String text,
    @Default(<ChatText>[]) List<ChatText> chatHistory,
    @Default(false) bool buttonLoading,
  }) = _InformationPageState;
}
