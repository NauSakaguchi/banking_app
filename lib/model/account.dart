import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    String? accountNumber,
    String? routingNumber,
    AccountType? accountType,
    String? balance,
  }) = _Account;

  const Account._();

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

enum AccountType {
  @JsonValue('saving')
  saving,
  @JsonValue('checking')
  checking,
}
