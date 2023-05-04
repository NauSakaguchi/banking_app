import 'package:banking_app/constant/string/login_string.dart';
import 'package:banking_app/view/login/state/login_page_state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_page_provider.g.dart';

@riverpod
class LoginItems extends _$LoginItems {
  @override
  LoginPageState build() {
    return const LoginPageState(
      username: '',
      password: '',
    );
  }

  void updateUserName(String str) {
    state = state.copyWith(username: str);
  }

  void updatePassword(String str) {
    state = state.copyWith(password: str);
  }

  void updateButtonStatus(bool isLoading, ColorScheme colorScheme) {
    if (isLoading) {
      state = state.copyWith(
        buttonLoading: isLoading,
        signInButtonTxt: LoginString.loading,
      );
    } else {
      state = state.copyWith(
        buttonLoading: isLoading,
        signInButtonTxt: LoginString.signIn,
      );
    }
  }
}
