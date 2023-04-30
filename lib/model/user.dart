import 'package:banking_app/model/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? id,
    String? lastName,
    String? firstName,
    String? middleName,
    String? streetAddress,
    String? city,
    String? state,
    @Default(<Account>[]) List<Account> accounts,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
