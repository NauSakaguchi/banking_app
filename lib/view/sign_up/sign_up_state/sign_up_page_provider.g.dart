// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_page_provider.dart';

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

String _$SignUpPageHash() => r'ce90899b87273c5f0295c1d9ae7274bc9365c8c1';

/// See also [SignUpPage].
final signUpPageProvider = NotifierProvider<SignUpPage, SignUpPageState>(
  SignUpPage.new,
  name: r'signUpPageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$SignUpPageHash,
);
typedef SignUpPageRef = NotifierProviderRef<SignUpPageState>;

abstract class _$SignUpPage extends Notifier<SignUpPageState> {
  @override
  SignUpPageState build();
}
