import 'package:banking_app/model/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class UserInfo extends _$UserInfo {
  @override
  User build() {
    return const User();
  }

  void updateUID(String id) {
    state = state.copyWith(id: id);
  }

  List<String> getAccountNumbers() {
    // TODO: implement accountNumbers
    final numbers = ['1234567890', '0987654321', '1234667890', '0984654321'];
    // final numbers = state.accounts.map((e) => e.accountNumber).toList();
    return numbers;
  }
}
