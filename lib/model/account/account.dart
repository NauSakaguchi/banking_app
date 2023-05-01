import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    @Default("") String accountNumber,
    @Default("") routingNumber,
    @Default("Saving") String accountType,
    int? centBalance,
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

extension ParseToString on AccountType {
  String toDisplayString() {
    switch (this) {
      case AccountType.saving:
        return "Saving";
      case AccountType.checking:
        return "Checking";
      default:
        return "";
    }
  }
}
