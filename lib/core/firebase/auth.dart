import 'package:banking_app/main.dart';
import 'package:banking_app/model/auth_state/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  AuthState build() {
    return const AuthState();
  }

  Future<String?> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (credential.user != null) {
        logger.d('uid: ${credential.user!.uid}');
        state = state.copyWith(email: email, uid: credential.user!.uid);
      } else {
        logger.e('credential.user is null');
      }
    } on FirebaseAuthException catch (e) {
      logger.e('Sign Up Failed');
      String errorMsg;
      if (e.code == 'weak-password') {
        errorMsg = 'The password provided is too weak.';
        logger.e('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        errorMsg = 'The account already exists for that email.';
        logger.e('The account already exists for that email.');
      } else {
        errorMsg = 'Something Wrong. Try again later.';
        logger.e('Something Wrong. Try again later.');
      }
      return errorMsg;
    }

    logger.d('Sign Up Success');
    // get idToken
    final idToken = await FirebaseAuth.instance.currentUser!.getIdToken();
    logger.d('idToken: $idToken');
    state = state.copyWith(idToken: idToken);

    return null;
  }

  Future<String?> signIn(
      {required String username, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: username,
        password: password,
      );
      if (credential.user != null) {
        logger.d('uid: ${credential.user!.uid}');
        state = state.copyWith(uid: credential.user!.uid);
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
    logger.d('idToken: $idToken');
    state = state.copyWith(email: username, idToken: idToken);
    return null;
  }
}
