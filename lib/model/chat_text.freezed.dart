// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatText _$ChatTextFromJson(Map<String, dynamic> json) {
  return _ChatText.fromJson(json);
}

/// @nodoc
mixin _$ChatText {
  String get text => throw _privateConstructorUsedError;
  Sender get sender => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatTextCopyWith<ChatText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatTextCopyWith<$Res> {
  factory $ChatTextCopyWith(ChatText value, $Res Function(ChatText) then) =
      _$ChatTextCopyWithImpl<$Res, ChatText>;
  @useResult
  $Res call({String text, Sender sender, String timestamp});
}

/// @nodoc
class _$ChatTextCopyWithImpl<$Res, $Val extends ChatText>
    implements $ChatTextCopyWith<$Res> {
  _$ChatTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? sender = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatTextCopyWith<$Res> implements $ChatTextCopyWith<$Res> {
  factory _$$_ChatTextCopyWith(
          _$_ChatText value, $Res Function(_$_ChatText) then) =
      __$$_ChatTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, Sender sender, String timestamp});
}

/// @nodoc
class __$$_ChatTextCopyWithImpl<$Res>
    extends _$ChatTextCopyWithImpl<$Res, _$_ChatText>
    implements _$$_ChatTextCopyWith<$Res> {
  __$$_ChatTextCopyWithImpl(
      _$_ChatText _value, $Res Function(_$_ChatText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? sender = null,
    Object? timestamp = null,
  }) {
    return _then(_$_ChatText(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatText extends _ChatText {
  const _$_ChatText(
      {this.text = '', this.sender = Sender.user, this.timestamp = ''})
      : super._();

  factory _$_ChatText.fromJson(Map<String, dynamic> json) =>
      _$$_ChatTextFromJson(json);

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final Sender sender;
  @override
  @JsonKey()
  final String timestamp;

  @override
  String toString() {
    return 'ChatText(text: $text, sender: $sender, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatText &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, sender, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatTextCopyWith<_$_ChatText> get copyWith =>
      __$$_ChatTextCopyWithImpl<_$_ChatText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatTextToJson(
      this,
    );
  }
}

abstract class _ChatText extends ChatText {
  const factory _ChatText(
      {final String text,
      final Sender sender,
      final String timestamp}) = _$_ChatText;
  const _ChatText._() : super._();

  factory _ChatText.fromJson(Map<String, dynamic> json) = _$_ChatText.fromJson;

  @override
  String get text;
  @override
  Sender get sender;
  @override
  String get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_ChatTextCopyWith<_$_ChatText> get copyWith =>
      throw _privateConstructorUsedError;
}
