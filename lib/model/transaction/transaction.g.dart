// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as String?,
      targetId: json['targetId'] as String?,
      accountNumber: json['accountNumber'] as String?,
      routingNumber: json['routingNumber'] as String?,
      centAmount: json['centAmount'] as int?,
      timestamp: json['timestamp'] as String?,
      description: json['description'] as String?,
      transactionType: json['transactionType'] as String? ?? "",
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'targetId': instance.targetId,
      'accountNumber': instance.accountNumber,
      'routingNumber': instance.routingNumber,
      'centAmount': instance.centAmount,
      'timestamp': instance.timestamp,
      'description': instance.description,
      'transactionType': instance.transactionType,
    };
