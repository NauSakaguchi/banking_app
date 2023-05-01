// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  String get accountNumber => throw _privateConstructorUsedError;
  dynamic get routingNumber => throw _privateConstructorUsedError;
  String get accountType => throw _privateConstructorUsedError;
  int? get centBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {String accountNumber,
      dynamic routingNumber,
      String accountType,
      int? centBalance});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = null,
    Object? routingNumber = freezed,
    Object? accountType = null,
    Object? centBalance = freezed,
  }) {
    return _then(_value.copyWith(
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      routingNumber: freezed == routingNumber
          ? _value.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      centBalance: freezed == centBalance
          ? _value.centBalance
          : centBalance // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$_AccountCopyWith(
          _$_Account value, $Res Function(_$_Account) then) =
      __$$_AccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accountNumber,
      dynamic routingNumber,
      String accountType,
      int? centBalance});
}

/// @nodoc
class __$$_AccountCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$_Account>
    implements _$$_AccountCopyWith<$Res> {
  __$$_AccountCopyWithImpl(_$_Account _value, $Res Function(_$_Account) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = null,
    Object? routingNumber = freezed,
    Object? accountType = null,
    Object? centBalance = freezed,
  }) {
    return _then(_$_Account(
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      routingNumber:
          freezed == routingNumber ? _value.routingNumber! : routingNumber,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      centBalance: freezed == centBalance
          ? _value.centBalance
          : centBalance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Account extends _Account {
  const _$_Account(
      {this.accountNumber = "",
      this.routingNumber = "",
      this.accountType = "Saving",
      this.centBalance})
      : super._();

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$$_AccountFromJson(json);

  @override
  @JsonKey()
  final String accountNumber;
  @override
  @JsonKey()
  final dynamic routingNumber;
  @override
  @JsonKey()
  final String accountType;
  @override
  final int? centBalance;

  @override
  String toString() {
    return 'Account(accountNumber: $accountNumber, routingNumber: $routingNumber, accountType: $accountType, centBalance: $centBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Account &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            const DeepCollectionEquality()
                .equals(other.routingNumber, routingNumber) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.centBalance, centBalance) ||
                other.centBalance == centBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountNumber,
      const DeepCollectionEquality().hash(routingNumber),
      accountType,
      centBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      __$$_AccountCopyWithImpl<_$_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountToJson(
      this,
    );
  }
}

abstract class _Account extends Account {
  const factory _Account(
      {final String accountNumber,
      final dynamic routingNumber,
      final String accountType,
      final int? centBalance}) = _$_Account;
  const _Account._() : super._();

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override
  String get accountNumber;
  @override
  dynamic get routingNumber;
  @override
  String get accountType;
  @override
  int? get centBalance;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      throw _privateConstructorUsedError;
}
