import 'package:banking_app/main.dart';
import 'package:banking_app/model/auth_state/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  AuthState build() {
    return const AuthState();
  }

  Future<String?> singIn(
      {required String username, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: username,
        password: password,
      );
      if (credential.user != null) {
        logger.d('uid: ${credential.user!.uid}');
      } else {
        logger.e('credential.user is null');
      }
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
    // get idToken
    final idToken = await FirebaseAuth.instance.currentUser!.getIdToken();
    state = state.copyWith(email: username, idToken: idToken);
    return null;
  }
}
