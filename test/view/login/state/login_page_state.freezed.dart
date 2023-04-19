// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginPageState {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get signInButtonTxt => throw _privateConstructorUsedError;
  bool get buttonLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginPageStateCopyWith<LoginPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPageStateCopyWith<$Res> {
  factory $LoginPageStateCopyWith(
          LoginPageState value, $Res Function(LoginPageState) then) =
      _$LoginPageStateCopyWithImpl<$Res, LoginPageState>;
  @useResult
  $Res call(
      {String username,
      String password,
      String signInButtonTxt,
      bool buttonLoading});
}

/// @nodoc
class _$LoginPageStateCopyWithImpl<$Res, $Val extends LoginPageState>
    implements $LoginPageStateCopyWith<$Res> {
  _$LoginPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? signInButtonTxt = null,
    Object? buttonLoading = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      signInButtonTxt: null == signInButtonTxt
          ? _value.signInButtonTxt
          : signInButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginPageStateCopyWith<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  factory _$$_LoginPageStateCopyWith(
          _$_LoginPageState value, $Res Function(_$_LoginPageState) then) =
      __$$_LoginPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String password,
      String signInButtonTxt,
      bool buttonLoading});
}

/// @nodoc
class __$$_LoginPageStateCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$_LoginPageState>
    implements _$$_LoginPageStateCopyWith<$Res> {
  __$$_LoginPageStateCopyWithImpl(
      _$_LoginPageState _value, $Res Function(_$_LoginPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? signInButtonTxt = null,
    Object? buttonLoading = null,
  }) {
    return _then(_$_LoginPageState(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      signInButtonTxt: null == signInButtonTxt
          ? _value.signInButtonTxt
          : signInButtonTxt // ignore: cast_nullable_to_non_nullable
              as String,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginPageState implements _LoginPageState {
  const _$_LoginPageState(
      {this.username = '',
      this.password = '',
      this.signInButtonTxt = LoginString.signIn,
      this.buttonLoading = false});

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String signInButtonTxt;
  @override
  @JsonKey()
  final bool buttonLoading;

  @override
  String toString() {
    return 'LoginPageState(username: $username, password: $password, signInButtonTxt: $signInButtonTxt, buttonLoading: $buttonLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginPageState &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.signInButtonTxt, signInButtonTxt) ||
                other.signInButtonTxt == signInButtonTxt) &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, username, password, signInButtonTxt, buttonLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginPageStateCopyWith<_$_LoginPageState> get copyWith =>
      __$$_LoginPageStateCopyWithImpl<_$_LoginPageState>(this, _$identity);
}

abstract class _LoginPageState implements LoginPageState {
  const factory _LoginPageState(
      {final String username,
      final String password,
      final String signInButtonTxt,
      final bool buttonLoading}) = _$_LoginPageState;

  @override
  String get username;
  @override
  String get password;
  @override
  String get signInButtonTxt;
  @override
  bool get buttonLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoginPageStateCopyWith<_$_LoginPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
