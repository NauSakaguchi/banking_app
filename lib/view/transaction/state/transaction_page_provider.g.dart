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

String _$TransactionItemsHash() => r'cb06d556ff7be917a80b5758e3c66f6d33fbf123';

/// See also [TransactionItems].
class TransactionItemsProvider extends AutoDisposeNotifierProviderImpl<
    TransactionItems, TransactionPageState> {
  TransactionItemsProvider(
    this.accountNumber,
  ) : super(
          () => TransactionItems()..accountNumber = accountNumber,
          from: transactionItemsProvider,
          name: r'transactionItemsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$TransactionItemsHash,
        );

  final String accountNumber;

  @override
  bool operator ==(Object other) {
    return other is TransactionItemsProvider &&
        other.accountNumber == accountNumber;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, accountNumber.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  TransactionPageState runNotifierBuild(
    covariant _$TransactionItems notifier,
  ) {
    return notifier.build(
      accountNumber,
    );
  }
}

typedef TransactionItemsRef
    = AutoDisposeNotifierProviderRef<TransactionPageState>;

/// See also [TransactionItems].
final transactionItemsProvider = TransactionItemsFamily();

class TransactionItemsFamily extends Family<TransactionPageState> {
  TransactionItemsFamily();

  TransactionItemsProvider call(
    String accountNumber,
  ) {
    return TransactionItemsProvider(
      accountNumber,
    );
  }

  @override
  AutoDisposeNotifierProviderImpl<TransactionItems, TransactionPageState>
      getProviderOverride(
    covariant TransactionItemsProvider provider,
  ) {
    return call(
      provider.accountNumber,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'transactionItemsProvider';
}

abstract class _$TransactionItems
    extends BuildlessAutoDisposeNotifier<TransactionPageState> {
  late final String accountNumber;

  TransactionPageState build(
    String accountNumber,
  );
}
