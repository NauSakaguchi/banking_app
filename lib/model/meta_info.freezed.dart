// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MetaInfo {
  String get email => throw _privateConstructorUsedError;
  String get idToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaInfoCopyWith<MetaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaInfoCopyWith<$Res> {
  factory $MetaInfoCopyWith(MetaInfo value, $Res Function(MetaInfo) then) =
      _$MetaInfoCopyWithImpl<$Res, MetaInfo>;
  @useResult
  $Res call({String email, String idToken});
}

/// @nodoc
class _$MetaInfoCopyWithImpl<$Res, $Val extends MetaInfo>
    implements $MetaInfoCopyWith<$Res> {
  _$MetaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? idToken = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaInfoCopyWith<$Res> implements $MetaInfoCopyWith<$Res> {
  factory _$$_MetaInfoCopyWith(
          _$_MetaInfo value, $Res Function(_$_MetaInfo) then) =
      __$$_MetaInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String idToken});
}

/// @nodoc
class __$$_MetaInfoCopyWithImpl<$Res>
    extends _$MetaInfoCopyWithImpl<$Res, _$_MetaInfo>
    implements _$$_MetaInfoCopyWith<$Res> {
  __$$_MetaInfoCopyWithImpl(
      _$_MetaInfo _value, $Res Function(_$_MetaInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? idToken = null,
  }) {
    return _then(_$_MetaInfo(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MetaInfo implements _MetaInfo {
  const _$_MetaInfo({this.email = '', this.idToken = ''});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String idToken;

  @override
  String toString() {
    return 'MetaInfo(email: $email, idToken: $idToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaInfo &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, idToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaInfoCopyWith<_$_MetaInfo> get copyWith =>
      __$$_MetaInfoCopyWithImpl<_$_MetaInfo>(this, _$identity);
}

abstract class _MetaInfo implements MetaInfo {
  const factory _MetaInfo({final String email, final String idToken}) =
      _$_MetaInfo;

  @override
  String get email;
  @override
  String get idToken;
  @override
  @JsonKey(ignore: true)
  _$$_MetaInfoCopyWith<_$_MetaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
