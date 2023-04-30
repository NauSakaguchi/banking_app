// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$TransactionItemsHash() => r'90c9ab090bd49fe1aa47314c1a4b2db6a9b3c4a6';

/// See also [TransactionItems].
final transactionItemsProvider =
    AutoDisposeNotifierProvider<TransactionItems, TransactionPageState>(
  TransactionItems.new,
  name: r'transactionItemsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$TransactionItemsHash,
);
typedef TransactionItemsRef
    = AutoDisposeNotifierProviderRef<TransactionPageState>;

abstract class _$TransactionItems
    extends AutoDisposeNotifier<TransactionPageState> {
  @override
  TransactionPageState build();
}
