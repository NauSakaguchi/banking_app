import 'package:banking_app/constant/string/login_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.freezed.dart';

// State for login page
// This is a freezed class
// https://pub.dev/packages/freezed
@freezed
class LoginPageState with _$LoginPageState {
  // username and password are default values
  // buttonLoading is false
  // signInButtonTxt is 'Sign In'
  const factory LoginPageState({
    @Default('') String username,
    @Default('') String password,
    @Default(LoginString.signIn) String signInButtonTxt,
    @Default(false) bool buttonLoading,
  }) = _LoginPageState;
}
