import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    String? uid,
    String? lastname,
    String? firstname,
  }) = _User;
}
