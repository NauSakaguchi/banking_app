import 'package:banking_app/view/account/state/account_page_state.dart';
import 'package:banking_app/view_model/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_page_provider.g.dart';

@riverpod
class AccountItems extends _$AccountItems {
  @override
  AccountPageState build() {
    ref.read(userInfoProvider.notifier).fetchUser().then((value) => {
          updateInitialized(true),
        });
    return const AccountPageState();
  }

  void updateInitialized(bool initialized) {
    state = state.copyWith(initialized: initialized);
  }
}
