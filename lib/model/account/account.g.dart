// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      accountNumber: json['accountNumber'] as String? ?? "",
      routingNumber: json['routingNumber'] ?? "",
      accountType: json['accountType'] as String? ?? "Saving",
      centBalance: json['centBalance'] as int?,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'accountNumber': instance.accountNumber,
      'routingNumber': instance.routingNumber,
      'accountType': instance.accountType,
      'centBalance': instance.centBalance,
    };
