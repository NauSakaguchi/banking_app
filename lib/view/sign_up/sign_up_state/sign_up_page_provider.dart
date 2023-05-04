import 'package:banking_app/view/sign_up/sign_up_state/sign_up_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_page_provider.g.dart';

@Riverpod(keepAlive: true)
class SignUpPage extends _$SignUpPage {
  @override
  SignUpPageState build() {
    return const SignUpPageState();
  }

  void updateEmail(String email) {
    state = state.copyWith(email: email);
  }

  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }

  void updateConfirmPassword(String confirmPassword) {
    state = state.copyWith(confirmPassword: confirmPassword);
  }

  void updateFirstName(String firstName) {
    state = state.copyWith(firstName: firstName);
  }

  void updateLastName(String lastName) {
    state = state.copyWith(lastName: lastName);
  }

  void updatePhoneNumber(String phoneNumber) {
    state = state.copyWith(phoneNumber: phoneNumber);
  }

  void updateAddress(String address) {
    state = state.copyWith(address: address);
  }

  void updateCity(String? city) {
    if (city == null) return;
    state = state.copyWith(city: city);
  }

  void updateUsState(String? usState) {
    if (usState == null) return;
    state = state.copyWith(usState: usState);
  }

  void updateZipCode(String zipCode) {
    state = state.copyWith(zipCode: zipCode);
  }

  void updateSsn(String ssn) {
    state = state.copyWith(ssn: ssn);
  }

  void updateButtonLoading(bool buttonLoading) {
    state = state.copyWith(buttonLoading: buttonLoading);
  }

  void updateFirstStepCompleted(bool firstStepCompleted) {
    state = state.copyWith(firstStepCompleted: firstStepCompleted);
  }
}
