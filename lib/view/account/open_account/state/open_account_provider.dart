import 'dart:convert';

import 'package:banking_app/core/firebase/auth.dart';
import 'package:banking_app/infrastructure/netbank_api/netbank_api.dart';
import 'package:banking_app/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'open_account_page_state.dart';

part 'open_account_provider.g.dart';

@riverpod
class OpenAccountItems extends _$OpenAccountItems {
  @override
  OpenAccountPageState build() {
    return const OpenAccountPageState();
  }

  void updateAccountType(String str) {
    state = state.copyWith(accountType: str);
  }

  void updateButtonStatus(bool isLoading) {
    if (isLoading) {
      state = state.copyWith(
        buttonLoading: isLoading,
        openAccountButtonTxt: 'Opening Account...',
      );
    } else {
      state = state.copyWith(
        buttonLoading: isLoading,
        openAccountButtonTxt: 'Open Account',
      );
    }
  }

  Future<void> onSubmit() async {
    const endpoint = '/account';

    updateButtonStatus(true);
    final idToken = ref.watch(authProvider).idToken;
    if (idToken == null) {
      logger.e('idToken is null');
      // throw exception
      throw Exception('idToken is null');
    }

    final response = await NetBankApi.postHttp(
      idToken,
      endpoint: endpoint,
      requestBody: {"type": state.accountType},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseBody = jsonDecode(response.body);
      // String content = responseBody['choices'][0]['message']['content'];
      logger.d('Content: $responseBody');
    } else {
      logger.d(jsonDecode(response.body));
      logger.e('Error: ${response.statusCode} ${response.reasonPhrase}');
      // throw exception
      throw Exception('Error: ${response.statusCode} ${response.reasonPhrase}');
    }

    updateButtonStatus(false);
    return Future.value();
  }
}
