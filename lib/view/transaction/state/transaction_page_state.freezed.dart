// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionPageState {
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  bool get initialized => throw _privateConstructorUsedError;
  bool get buttonLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionPageStateCopyWith<TransactionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionPageStateCopyWith<$Res> {
  factory $TransactionPageStateCopyWith(TransactionPageState value,
          $Res Function(TransactionPageState) then) =
      _$TransactionPageStateCopyWithImpl<$Res, TransactionPageState>;
  @useResult
  $Res call(
      {List<Transaction> transactions, bool initialized, bool buttonLoading});
}

/// @nodoc
class _$TransactionPageStateCopyWithImpl<$Res,
        $Val extends TransactionPageState>
    implements $TransactionPageStateCopyWith<$Res> {
  _$TransactionPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? initialized = null,
    Object? buttonLoading = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionPageStateCopyWith<$Res>
    implements $TransactionPageStateCopyWith<$Res> {
  factory _$$_TransactionPageStateCopyWith(_$_TransactionPageState value,
          $Res Function(_$_TransactionPageState) then) =
      __$$_TransactionPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Transaction> transactions, bool initialized, bool buttonLoading});
}

/// @nodoc
class __$$_TransactionPageStateCopyWithImpl<$Res>
    extends _$TransactionPageStateCopyWithImpl<$Res, _$_TransactionPageState>
    implements _$$_TransactionPageStateCopyWith<$Res> {
  __$$_TransactionPageStateCopyWithImpl(_$_TransactionPageState _value,
      $Res Function(_$_TransactionPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? initialized = null,
    Object? buttonLoading = null,
  }) {
    return _then(_$_TransactionPageState(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TransactionPageState implements _TransactionPageState {
  const _$_TransactionPageState(
      {final List<Transaction> transactions = const <Transaction>[],
      this.initialized = false,
      this.buttonLoading = false})
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  @JsonKey()
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey()
  final bool initialized;
  @override
  @JsonKey()
  final bool buttonLoading;

  @override
  String toString() {
    return 'TransactionPageState(transactions: $transactions, initialized: $initialized, buttonLoading: $buttonLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionPageState &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.initialized, initialized) ||
                other.initialized == initialized) &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_transactions),
      initialized,
      buttonLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionPageStateCopyWith<_$_TransactionPageState> get copyWith =>
      __$$_TransactionPageStateCopyWithImpl<_$_TransactionPageState>(
          this, _$identity);
}

abstract class _TransactionPageState implements TransactionPageState {
  const factory _TransactionPageState(
      {final List<Transaction> transactions,
      final bool initialized,
      final bool buttonLoading}) = _$_TransactionPageState;

  @override
  List<Transaction> get transactions;
  @override
  bool get initialized;
  @override
  bool get buttonLoading;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionPageStateCopyWith<_$_TransactionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
