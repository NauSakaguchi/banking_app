// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'close_account_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CloseAccountPageState {
  List<String> get accounts => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get buttonLoading => throw _privateConstructorUsedError;
  String get closeAccountButtonTxt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CloseAccountPageStateCopyWith<CloseAccountPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloseAccountPageStateCopyWith<$Res> {
  factory $CloseAccountPageStateCopyWith(CloseAccountPageState value,
          $Res Function(CloseAccountPageState) then) =
      _$CloseAccountPageStateCopyWithImpl<$Res, CloseAccountPageState>;
  @useResult
  $Res call(
      {List<String> accounts,
      String password,
      bool buttonLoading,
      String closeAccountButtonTxt});
}

/// @nodoc
class _$CloseAccountPageStateCopyWithImpl<$Res,
        $Val extends CloseAccountPageState>
    implements $CloseAccountPageStateCopyWith<$Res> {
  _$CloseAccountPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? password = null,
    Object? buttonLoading = null,
    Object? closeAccountButtonTxt = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      closeAccountButtonTxt: null == closeAccountButtonTxt
          ? _value.closeAccountButtonTxt
          : closeAccountButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CloseAccountPageStateCopyWith<$Res>
    implements $CloseAccountPageStateCopyWith<$Res> {
  factory _$$_CloseAccountPageStateCopyWith(_$_CloseAccountPageState value,
          $Res Function(_$_CloseAccountPageState) then) =
      __$$_CloseAccountPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> accounts,
      String password,
      bool buttonLoading,
      String closeAccountButtonTxt});
}

/// @nodoc
class __$$_CloseAccountPageStateCopyWithImpl<$Res>
    extends _$CloseAccountPageStateCopyWithImpl<$Res, _$_CloseAccountPageState>
    implements _$$_CloseAccountPageStateCopyWith<$Res> {
  __$$_CloseAccountPageStateCopyWithImpl(_$_CloseAccountPageState _value,
      $Res Function(_$_CloseAccountPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? password = null,
    Object? buttonLoading = null,
    Object? closeAccountButtonTxt = null,
  }) {
    return _then(_$_CloseAccountPageState(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      closeAccountButtonTxt: null == closeAccountButtonTxt
          ? _value.closeAccountButtonTxt
          : closeAccountButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CloseAccountPageState implements _CloseAccountPageState {
  const _$_CloseAccountPageState(
      {final List<String> accounts = const <String>[],
      this.password = '',
      this.buttonLoading = false,
      this.closeAccountButtonTxt = 'Close Account'})
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
  final String password;
  @override
  @JsonKey()
  final bool buttonLoading;
  @override
  @JsonKey()
  final String closeAccountButtonTxt;

  @override
  String toString() {
    return 'CloseAccountPageState(accounts: $accounts, password: $password, buttonLoading: $buttonLoading, closeAccountButtonTxt: $closeAccountButtonTxt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CloseAccountPageState &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading) &&
            (identical(other.closeAccountButtonTxt, closeAccountButtonTxt) ||
                other.closeAccountButtonTxt == closeAccountButtonTxt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      password,
      buttonLoading,
      closeAccountButtonTxt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CloseAccountPageStateCopyWith<_$_CloseAccountPageState> get copyWith =>
      __$$_CloseAccountPageStateCopyWithImpl<_$_CloseAccountPageState>(
          this, _$identity);
}

abstract class _CloseAccountPageState implements CloseAccountPageState {
  const factory _CloseAccountPageState(
      {final List<String> accounts,
      final String password,
      final bool buttonLoading,
      final String closeAccountButtonTxt}) = _$_CloseAccountPageState;

  @override
  List<String> get accounts;
  @override
  String get password;
  @override
  bool get buttonLoading;
  @override
  String get closeAccountButtonTxt;
  @override
  @JsonKey(ignore: true)
  _$$_CloseAccountPageStateCopyWith<_$_CloseAccountPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
