import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_page_state.freezed.dart';

@freezed
class SignUpPageState with _$SignUpPageState {
  const factory SignUpPageState({
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String phoneNumber,
    @Default("") String address,
    @Default("") String city,
    @Default("") String usState,
    @Default("") String zipCode,
    @Default("") String ssn,
    @Default(false) bool buttonLoading,
    @Default(false) bool firstStepCompleted,
  }) = _SignUpPageState;

  const SignUpPageState._();
}
