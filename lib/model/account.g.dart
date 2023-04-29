// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      accountNumber: json['accountNumber'] as String?,
      routingNumber: json['routingNumber'] as String?,
      accountType:
          $enumDecodeNullable(_$AccountTypeEnumMap, json['accountType']),
      balance: json['balance'] as String?,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'accountNumber': instance.accountNumber,
      'routingNumber': instance.routingNumber,
      'accountType': _$AccountTypeEnumMap[instance.accountType],
      'balance': instance.balance,
    };

const _$AccountTypeEnumMap = {
  AccountType.saving: 'saving',
  AccountType.checking: 'checking',
};
