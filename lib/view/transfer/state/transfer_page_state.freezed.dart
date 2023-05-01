// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransferPageState {
  String? get fromAccountNumber => throw _privateConstructorUsedError;
  String? get toAccountNumber => throw _privateConstructorUsedError;
  int? get centAmount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get buttonLoading => throw _privateConstructorUsedError;
  String get transferButtonTxt => throw _privateConstructorUsedError;
  bool get initialized => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransferPageStateCopyWith<TransferPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferPageStateCopyWith<$Res> {
  factory $TransferPageStateCopyWith(
          TransferPageState value, $Res Function(TransferPageState) then) =
      _$TransferPageStateCopyWithImpl<$Res, TransferPageState>;
  @useResult
  $Res call(
      {String? fromAccountNumber,
      String? toAccountNumber,
      int? centAmount,
      String description,
      bool buttonLoading,
      String transferButtonTxt,
      bool initialized});
}

/// @nodoc
class _$TransferPageStateCopyWithImpl<$Res, $Val extends TransferPageState>
    implements $TransferPageStateCopyWith<$Res> {
  _$TransferPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAccountNumber = freezed,
    Object? toAccountNumber = freezed,
    Object? centAmount = freezed,
    Object? description = null,
    Object? buttonLoading = null,
    Object? transferButtonTxt = null,
    Object? initialized = null,
  }) {
    return _then(_value.copyWith(
      fromAccountNumber: freezed == fromAccountNumber
          ? _value.fromAccountNumber
          : fromAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      toAccountNumber: freezed == toAccountNumber
          ? _value.toAccountNumber
          : toAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
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
      transferButtonTxt: null == transferButtonTxt
          ? _value.transferButtonTxt
          : transferButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransferPageStateCopyWith<$Res>
    implements $TransferPageStateCopyWith<$Res> {
  factory _$$_TransferPageStateCopyWith(_$_TransferPageState value,
          $Res Function(_$_TransferPageState) then) =
      __$$_TransferPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fromAccountNumber,
      String? toAccountNumber,
      int? centAmount,
      String description,
      bool buttonLoading,
      String transferButtonTxt,
      bool initialized});
}

/// @nodoc
class __$$_TransferPageStateCopyWithImpl<$Res>
    extends _$TransferPageStateCopyWithImpl<$Res, _$_TransferPageState>
    implements _$$_TransferPageStateCopyWith<$Res> {
  __$$_TransferPageStateCopyWithImpl(
      _$_TransferPageState _value, $Res Function(_$_TransferPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAccountNumber = freezed,
    Object? toAccountNumber = freezed,
    Object? centAmount = freezed,
    Object? description = null,
    Object? buttonLoading = null,
    Object? transferButtonTxt = null,
    Object? initialized = null,
  }) {
    return _then(_$_TransferPageState(
      fromAccountNumber: freezed == fromAccountNumber
          ? _value.fromAccountNumber
          : fromAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      toAccountNumber: freezed == toAccountNumber
          ? _value.toAccountNumber
          : toAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
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
      transferButtonTxt: null == transferButtonTxt
          ? _value.transferButtonTxt
          : transferButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TransferPageState implements _TransferPageState {
  const _$_TransferPageState(
      {this.fromAccountNumber,
      this.toAccountNumber,
      this.centAmount,
      this.description = "",
      this.buttonLoading = false,
      this.transferButtonTxt = 'Transfer',
      this.initialized = false});

  @override
  final String? fromAccountNumber;
  @override
  final String? toAccountNumber;
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
  final String transferButtonTxt;
  @override
  @JsonKey()
  final bool initialized;

  @override
  String toString() {
    return 'TransferPageState(fromAccountNumber: $fromAccountNumber, toAccountNumber: $toAccountNumber, centAmount: $centAmount, description: $description, buttonLoading: $buttonLoading, transferButtonTxt: $transferButtonTxt, initialized: $initialized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransferPageState &&
            (identical(other.fromAccountNumber, fromAccountNumber) ||
                other.fromAccountNumber == fromAccountNumber) &&
            (identical(other.toAccountNumber, toAccountNumber) ||
                other.toAccountNumber == toAccountNumber) &&
            (identical(other.centAmount, centAmount) ||
                other.centAmount == centAmount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading) &&
            (identical(other.transferButtonTxt, transferButtonTxt) ||
                other.transferButtonTxt == transferButtonTxt) &&
            (identical(other.initialized, initialized) ||
                other.initialized == initialized));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fromAccountNumber,
      toAccountNumber,
      centAmount,
      description,
      buttonLoading,
      transferButtonTxt,
      initialized);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransferPageStateCopyWith<_$_TransferPageState> get copyWith =>
      __$$_TransferPageStateCopyWithImpl<_$_TransferPageState>(
          this, _$identity);
}

abstract class _TransferPageState implements TransferPageState {
  const factory _TransferPageState(
      {final String? fromAccountNumber,
      final String? toAccountNumber,
      final int? centAmount,
      final String description,
      final bool buttonLoading,
      final String transferButtonTxt,
      final bool initialized}) = _$_TransferPageState;

  @override
  String? get fromAccountNumber;
  @override
  String? get toAccountNumber;
  @override
  int? get centAmount;
  @override
  String get description;
  @override
  bool get buttonLoading;
  @override
  String get transferButtonTxt;
  @override
  bool get initialized;
  @override
  @JsonKey(ignore: true)
  _$$_TransferPageStateCopyWith<_$_TransferPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
