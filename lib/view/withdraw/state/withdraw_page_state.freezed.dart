// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdraw_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WithdrawPageState {
  String? get accountNumber => throw _privateConstructorUsedError;
  int? get centAmount => throw _privateConstructorUsedError;
  bool get buttonLoading => throw _privateConstructorUsedError;
  String get withdrawButtonTxt => throw _privateConstructorUsedError;
  bool get initialized => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawPageStateCopyWith<WithdrawPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawPageStateCopyWith<$Res> {
  factory $WithdrawPageStateCopyWith(
          WithdrawPageState value, $Res Function(WithdrawPageState) then) =
      _$WithdrawPageStateCopyWithImpl<$Res, WithdrawPageState>;
  @useResult
  $Res call(
      {String? accountNumber,
      int? centAmount,
      bool buttonLoading,
      String withdrawButtonTxt,
      bool initialized});
}

/// @nodoc
class _$WithdrawPageStateCopyWithImpl<$Res, $Val extends WithdrawPageState>
    implements $WithdrawPageStateCopyWith<$Res> {
  _$WithdrawPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? centAmount = freezed,
    Object? buttonLoading = null,
    Object? withdrawButtonTxt = null,
    Object? initialized = null,
  }) {
    return _then(_value.copyWith(
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      centAmount: freezed == centAmount
          ? _value.centAmount
          : centAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      withdrawButtonTxt: null == withdrawButtonTxt
          ? _value.withdrawButtonTxt
          : withdrawButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WithdrawPageStateCopyWith<$Res>
    implements $WithdrawPageStateCopyWith<$Res> {
  factory _$$_WithdrawPageStateCopyWith(_$_WithdrawPageState value,
          $Res Function(_$_WithdrawPageState) then) =
      __$$_WithdrawPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountNumber,
      int? centAmount,
      bool buttonLoading,
      String withdrawButtonTxt,
      bool initialized});
}

/// @nodoc
class __$$_WithdrawPageStateCopyWithImpl<$Res>
    extends _$WithdrawPageStateCopyWithImpl<$Res, _$_WithdrawPageState>
    implements _$$_WithdrawPageStateCopyWith<$Res> {
  __$$_WithdrawPageStateCopyWithImpl(
      _$_WithdrawPageState _value, $Res Function(_$_WithdrawPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? centAmount = freezed,
    Object? buttonLoading = null,
    Object? withdrawButtonTxt = null,
    Object? initialized = null,
  }) {
    return _then(_$_WithdrawPageState(
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      centAmount: freezed == centAmount
          ? _value.centAmount
          : centAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      withdrawButtonTxt: null == withdrawButtonTxt
          ? _value.withdrawButtonTxt
          : withdrawButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WithdrawPageState implements _WithdrawPageState {
  const _$_WithdrawPageState(
      {this.accountNumber,
      this.centAmount,
      this.buttonLoading = false,
      this.withdrawButtonTxt = 'Withdraw',
      this.initialized = false});

  @override
  final String? accountNumber;
  @override
  final int? centAmount;
  @override
  @JsonKey()
  final bool buttonLoading;
  @override
  @JsonKey()
  final String withdrawButtonTxt;
  @override
  @JsonKey()
  final bool initialized;

  @override
  String toString() {
    return 'WithdrawPageState(accountNumber: $accountNumber, centAmount: $centAmount, buttonLoading: $buttonLoading, withdrawButtonTxt: $withdrawButtonTxt, initialized: $initialized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithdrawPageState &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.centAmount, centAmount) ||
                other.centAmount == centAmount) &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading) &&
            (identical(other.withdrawButtonTxt, withdrawButtonTxt) ||
                other.withdrawButtonTxt == withdrawButtonTxt) &&
            (identical(other.initialized, initialized) ||
                other.initialized == initialized));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountNumber, centAmount,
      buttonLoading, withdrawButtonTxt, initialized);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithdrawPageStateCopyWith<_$_WithdrawPageState> get copyWith =>
      __$$_WithdrawPageStateCopyWithImpl<_$_WithdrawPageState>(
          this, _$identity);
}

abstract class _WithdrawPageState implements WithdrawPageState {
  const factory _WithdrawPageState(
      {final String? accountNumber,
      final int? centAmount,
      final bool buttonLoading,
      final String withdrawButtonTxt,
      final bool initialized}) = _$_WithdrawPageState;

  @override
  String? get accountNumber;
  @override
  int? get centAmount;
  @override
  bool get buttonLoading;
  @override
  String get withdrawButtonTxt;
  @override
  bool get initialized;
  @override
  @JsonKey(ignore: true)
  _$$_WithdrawPageStateCopyWith<_$_WithdrawPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
