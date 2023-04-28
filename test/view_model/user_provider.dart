import 'package:banking_app/model/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class UserInfo extends _$UserInfo {
  @override
  User build() {
    return const User();
  }

  void updateUID(String uid) {
    state = state.copyWith(uid: uid);
  }
}
