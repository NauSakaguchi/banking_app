import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    String? id,
    String? targetId,
    String? accountNumber,
    String? routingNumber,
    int? centAmount,
    DateTime? timestamp,
    String? description,
    TransactionType? transactionType,
  }) = _Transaction;

  const Transaction._();

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

enum TransactionType {
  @JsonValue('deposit')
  deposit,
  @JsonValue('withdrawal')
  withdrawal,
  @JsonValue('transfer')
  transfer,
}
