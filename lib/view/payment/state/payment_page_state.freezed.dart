// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentPageState {
  List<String> get accounts => throw _privateConstructorUsedError;
  String get fromAccountNumber => throw _privateConstructorUsedError;
  String get toAccountNumber => throw _privateConstructorUsedError;
  String get toRoutingNumber => throw _privateConstructorUsedError;
  int? get centAmount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get buttonLoading => throw _privateConstructorUsedError;
  String get payButtonTxt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentPageStateCopyWith<PaymentPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPageStateCopyWith<$Res> {
  factory $PaymentPageStateCopyWith(
          PaymentPageState value, $Res Function(PaymentPageState) then) =
      _$PaymentPageStateCopyWithImpl<$Res, PaymentPageState>;
  @useResult
  $Res call(
      {List<String> accounts,
      String fromAccountNumber,
      String toAccountNumber,
      String toRoutingNumber,
      int? centAmount,
      String description,
      bool buttonLoading,
      String payButtonTxt});
}

/// @nodoc
class _$PaymentPageStateCopyWithImpl<$Res, $Val extends PaymentPageState>
    implements $PaymentPageStateCopyWith<$Res> {
  _$PaymentPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? fromAccountNumber = null,
    Object? toAccountNumber = null,
    Object? toRoutingNumber = null,
    Object? centAmount = freezed,
    Object? description = null,
    Object? buttonLoading = null,
    Object? payButtonTxt = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fromAccountNumber: null == fromAccountNumber
          ? _value.fromAccountNumber
          : fromAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      toAccountNumber: null == toAccountNumber
          ? _value.toAccountNumber
          : toAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      toRoutingNumber: null == toRoutingNumber
          ? _value.toRoutingNumber
          : toRoutingNumber // ignore: cast_nullable_to_non_nullable
              as String,
      centAmount: freezed == centAmount
          ? _value.centAmount
          : centAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      payButtonTxt: null == payButtonTxt
          ? _value.payButtonTxt
          : payButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentPageStateCopyWith<$Res>
    implements $PaymentPageStateCopyWith<$Res> {
  factory _$$_PaymentPageStateCopyWith(
          _$_PaymentPageState value, $Res Function(_$_PaymentPageState) then) =
      __$$_PaymentPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> accounts,
      String fromAccountNumber,
      String toAccountNumber,
      String toRoutingNumber,
      int? centAmount,
      String description,
      bool buttonLoading,
      String payButtonTxt});
}

/// @nodoc
class __$$_PaymentPageStateCopyWithImpl<$Res>
    extends _$PaymentPageStateCopyWithImpl<$Res, _$_PaymentPageState>
    implements _$$_PaymentPageStateCopyWith<$Res> {
  __$$_PaymentPageStateCopyWithImpl(
      _$_PaymentPageState _value, $Res Function(_$_PaymentPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? fromAccountNumber = null,
    Object? toAccountNumber = null,
    Object? toRoutingNumber = null,
    Object? centAmount = freezed,
    Object? description = null,
    Object? buttonLoading = null,
    Object? payButtonTxt = null,
  }) {
    return _then(_$_PaymentPageState(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fromAccountNumber: null == fromAccountNumber
          ? _value.fromAccountNumber
          : fromAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      toAccountNumber: null == toAccountNumber
          ? _value.toAccountNumber
          : toAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      toRoutingNumber: null == toRoutingNumber
          ? _value.toRoutingNumber
          : toRoutingNumber // ignore: cast_nullable_to_non_nullable
              as String,
      centAmount: freezed == centAmount
          ? _value.centAmount
          : centAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      payButtonTxt: null == payButtonTxt
          ? _value.payButtonTxt
          : payButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentPageState implements _PaymentPageState {
  const _$_PaymentPageState(
      {final List<String> accounts = const <String>[],
      this.fromAccountNumber = '',
      this.toAccountNumber = '',
      this.toRoutingNumber = '',
      this.centAmount,
      this.description = '',
      this.buttonLoading = false,
      this.payButtonTxt = 'Pay'})
      : _accounts = accounts;

  final List<String> _accounts;
  @override
  @JsonKey()
  List<String> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  @JsonKey()
  final String fromAccountNumber;
  @override
  @JsonKey()
  final String toAccountNumber;
  @override
  @JsonKey()
  final String toRoutingNumber;
  @override
  final int? centAmount;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool buttonLoading;
  @override
  @JsonKey()
  final String payButtonTxt;

  @override
  String toString() {
    return 'PaymentPageState(accounts: $accounts, fromAccountNumber: $fromAccountNumber, toAccountNumber: $toAccountNumber, toRoutingNumber: $toRoutingNumber, centAmount: $centAmount, description: $description, buttonLoading: $buttonLoading, payButtonTxt: $payButtonTxt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentPageState &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.fromAccountNumber, fromAccountNumber) ||
                other.fromAccountNumber == fromAccountNumber) &&
            (identical(other.toAccountNumber, toAccountNumber) ||
                other.toAccountNumber == toAccountNumber) &&
            (identical(other.toRoutingNumber, toRoutingNumber) ||
                other.toRoutingNumber == toRoutingNumber) &&
            (identical(other.centAmount, centAmount) ||
                other.centAmount == centAmount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading) &&
            (identical(other.payButtonTxt, payButtonTxt) ||
                other.payButtonTxt == payButtonTxt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      fromAccountNumber,
      toAccountNumber,
      toRoutingNumber,
      centAmount,
      description,
      buttonLoading,
      payButtonTxt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentPageStateCopyWith<_$_PaymentPageState> get copyWith =>
      __$$_PaymentPageStateCopyWithImpl<_$_PaymentPageState>(this, _$identity);
}

abstract class _PaymentPageState implements PaymentPageState {
  const factory _PaymentPageState(
      {final List<String> accounts,
      final String fromAccountNumber,
      final String toAccountNumber,
      final String toRoutingNumber,
      final int? centAmount,
      final String description,
      final bool buttonLoading,
      final String payButtonTxt}) = _$_PaymentPageState;

  @override
  List<String> get accounts;
  @override
  String get fromAccountNumber;
  @override
  String get toAccountNumber;
  @override
  String get toRoutingNumber;
  @override
  int? get centAmount;
  @override
  String get description;
  @override
  bool get buttonLoading;
  @override
  String get payButtonTxt;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentPageStateCopyWith<_$_PaymentPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
