// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_account_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OpenAccountPageState {
  List<String> get accounts => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get accountType => throw _privateConstructorUsedError;
  bool get buttonLoading => throw _privateConstructorUsedError;
  String get openAccountButtonTxt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenAccountPageStateCopyWith<OpenAccountPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAccountPageStateCopyWith<$Res> {
  factory $OpenAccountPageStateCopyWith(OpenAccountPageState value,
          $Res Function(OpenAccountPageState) then) =
      _$OpenAccountPageStateCopyWithImpl<$Res, OpenAccountPageState>;
  @useResult
  $Res call(
      {List<String> accounts,
      String accountName,
      String accountType,
      bool buttonLoading,
      String openAccountButtonTxt});
}

/// @nodoc
class _$OpenAccountPageStateCopyWithImpl<$Res,
        $Val extends OpenAccountPageState>
    implements $OpenAccountPageStateCopyWith<$Res> {
  _$OpenAccountPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? accountName = null,
    Object? accountType = null,
    Object? buttonLoading = null,
    Object? openAccountButtonTxt = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      openAccountButtonTxt: null == openAccountButtonTxt
          ? _value.openAccountButtonTxt
          : openAccountButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenAccountPageStateCopyWith<$Res>
    implements $OpenAccountPageStateCopyWith<$Res> {
  factory _$$_OpenAccountPageStateCopyWith(_$_OpenAccountPageState value,
          $Res Function(_$_OpenAccountPageState) then) =
      __$$_OpenAccountPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> accounts,
      String accountName,
      String accountType,
      bool buttonLoading,
      String openAccountButtonTxt});
}

/// @nodoc
class __$$_OpenAccountPageStateCopyWithImpl<$Res>
    extends _$OpenAccountPageStateCopyWithImpl<$Res, _$_OpenAccountPageState>
    implements _$$_OpenAccountPageStateCopyWith<$Res> {
  __$$_OpenAccountPageStateCopyWithImpl(_$_OpenAccountPageState _value,
      $Res Function(_$_OpenAccountPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? accountName = null,
    Object? accountType = null,
    Object? buttonLoading = null,
    Object? openAccountButtonTxt = null,
  }) {
    return _then(_$_OpenAccountPageState(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      openAccountButtonTxt: null == openAccountButtonTxt
          ? _value.openAccountButtonTxt
          : openAccountButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenAccountPageState implements _OpenAccountPageState {
  const _$_OpenAccountPageState(
      {final List<String> accounts = const <String>[],
      this.accountName = '',
      this.accountType = 'Savings',
      this.buttonLoading = false,
      this.openAccountButtonTxt = 'Open Account'})
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
  final String accountName;
  @override
  @JsonKey()
  final String accountType;
  @override
  @JsonKey()
  final bool buttonLoading;
  @override
  @JsonKey()
  final String openAccountButtonTxt;

  @override
  String toString() {
    return 'OpenAccountPageState(accounts: $accounts, accountName: $accountName, accountType: $accountType, buttonLoading: $buttonLoading, openAccountButtonTxt: $openAccountButtonTxt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAccountPageState &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading) &&
            (identical(other.openAccountButtonTxt, openAccountButtonTxt) ||
                other.openAccountButtonTxt == openAccountButtonTxt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      accountName,
      accountType,
      buttonLoading,
      openAccountButtonTxt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAccountPageStateCopyWith<_$_OpenAccountPageState> get copyWith =>
      __$$_OpenAccountPageStateCopyWithImpl<_$_OpenAccountPageState>(
          this, _$identity);
}

abstract class _OpenAccountPageState implements OpenAccountPageState {
  const factory _OpenAccountPageState(
      {final List<String> accounts,
      final String accountName,
      final String accountType,
      final bool buttonLoading,
      final String openAccountButtonTxt}) = _$_OpenAccountPageState;

  @override
  List<String> get accounts;
  @override
  String get accountName;
  @override
  String get accountType;
  @override
  bool get buttonLoading;
  @override
  String get openAccountButtonTxt;
  @override
  @JsonKey(ignore: true)
  _$$_OpenAccountPageStateCopyWith<_$_OpenAccountPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
