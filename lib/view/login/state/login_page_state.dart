import 'package:banking_app/constant/string/login_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.freezed.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState({
    @Default('') String username,
    @Default('') String password,
    @Default(LoginString.signIn) String signInButtonTxt,
    @Default(false) bool buttonLoading,
  }) = _LoginPageState;
}
