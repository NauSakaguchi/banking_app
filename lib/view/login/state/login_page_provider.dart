import 'package:banking_app/constant/string/login_string.dart';
import 'package:banking_app/main.dart';
import 'package:banking_app/view/login/state/login_page_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_page_provider.g.dart';

@riverpod
class LoginItems extends _$LoginItems {
  @override
  LoginPageState build() {
    return const LoginPageState(
      username: 'username@example.com',
      password: 'password',
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

  Future<String?> auth() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: state.username,
        password: state.password,
      );
    } on FirebaseAuthException catch (e) {
      logger.e('Login Failed');
      String errorMsg;
      if (e.code == 'invalid-email') {
        errorMsg = 'Username is invalid';
        logger.e('Username is invalid');
      } else if (e.code == 'user-not-found') {
        errorMsg = 'This user does not exist';
        logger.e('This user does not exist');
      } else if (e.code == 'wrong-password') {
        errorMsg = 'Wrong Password';
        logger.e('Wrong Password');
      } else {
        errorMsg = 'Something Wrong. Try again later.';
        logger.e('Something Wrong. Try again later.');
      }
      return errorMsg;
    }

    logger.d('Login Success');
    return null;
  }
}
