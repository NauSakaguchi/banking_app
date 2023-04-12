// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'atm_map_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AtmMapPageState {
  Completer<GoogleMapController>? get controller =>
      throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  Position? get currentPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AtmMapPageStateCopyWith<AtmMapPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtmMapPageStateCopyWith<$Res> {
  factory $AtmMapPageStateCopyWith(
          AtmMapPageState value, $Res Function(AtmMapPageState) then) =
      _$AtmMapPageStateCopyWithImpl<$Res, AtmMapPageState>;
  @useResult
  $Res call(
      {Completer<GoogleMapController>? controller,
      String username,
      Position? currentPosition});
}

/// @nodoc
class _$AtmMapPageStateCopyWithImpl<$Res, $Val extends AtmMapPageState>
    implements $AtmMapPageStateCopyWith<$Res> {
  _$AtmMapPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
    Object? username = null,
    Object? currentPosition = freezed,
  }) {
    return _then(_value.copyWith(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as Completer<GoogleMapController>?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AtmMapPageStateCopyWith<$Res>
    implements $AtmMapPageStateCopyWith<$Res> {
  factory _$$_AtmMapPageStateCopyWith(
          _$_AtmMapPageState value, $Res Function(_$_AtmMapPageState) then) =
      __$$_AtmMapPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Completer<GoogleMapController>? controller,
      String username,
      Position? currentPosition});
}

/// @nodoc
class __$$_AtmMapPageStateCopyWithImpl<$Res>
    extends _$AtmMapPageStateCopyWithImpl<$Res, _$_AtmMapPageState>
    implements _$$_AtmMapPageStateCopyWith<$Res> {
  __$$_AtmMapPageStateCopyWithImpl(
      _$_AtmMapPageState _value, $Res Function(_$_AtmMapPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
    Object? username = null,
    Object? currentPosition = freezed,
  }) {
    return _then(_$_AtmMapPageState(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as Completer<GoogleMapController>?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc

class _$_AtmMapPageState implements _AtmMapPageState {
  const _$_AtmMapPageState(
      {this.controller, this.username = '', this.currentPosition});

  @override
  final Completer<GoogleMapController>? controller;
  @override
  @JsonKey()
  final String username;
  @override
  final Position? currentPosition;

  @override
  String toString() {
    return 'AtmMapPageState(controller: $controller, username: $username, currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AtmMapPageState &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, controller, username, currentPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AtmMapPageStateCopyWith<_$_AtmMapPageState> get copyWith =>
      __$$_AtmMapPageStateCopyWithImpl<_$_AtmMapPageState>(this, _$identity);
}

abstract class _AtmMapPageState implements AtmMapPageState {
  const factory _AtmMapPageState(
      {final Completer<GoogleMapController>? controller,
      final String username,
      final Position? currentPosition}) = _$_AtmMapPageState;

  @override
  Completer<GoogleMapController>? get controller;
  @override
  String get username;
  @override
  Position? get currentPosition;
  @override
  @JsonKey(ignore: true)
  _$$_AtmMapPageStateCopyWith<_$_AtmMapPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
