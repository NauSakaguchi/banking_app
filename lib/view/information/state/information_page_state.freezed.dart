// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'information_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InformationPageState {
  String get text => throw _privateConstructorUsedError;
  List<ChatText> get chatHistory => throw _privateConstructorUsedError;
  bool get buttonLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InformationPageStateCopyWith<InformationPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformationPageStateCopyWith<$Res> {
  factory $InformationPageStateCopyWith(InformationPageState value,
          $Res Function(InformationPageState) then) =
      _$InformationPageStateCopyWithImpl<$Res, InformationPageState>;
  @useResult
  $Res call({String text, List<ChatText> chatHistory, bool buttonLoading});
}

/// @nodoc
class _$InformationPageStateCopyWithImpl<$Res,
        $Val extends InformationPageState>
    implements $InformationPageStateCopyWith<$Res> {
  _$InformationPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? chatHistory = null,
    Object? buttonLoading = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      chatHistory: null == chatHistory
          ? _value.chatHistory
          : chatHistory // ignore: cast_nullable_to_non_nullable
              as List<ChatText>,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InformationPageStateCopyWith<$Res>
    implements $InformationPageStateCopyWith<$Res> {
  factory _$$_InformationPageStateCopyWith(_$_InformationPageState value,
          $Res Function(_$_InformationPageState) then) =
      __$$_InformationPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, List<ChatText> chatHistory, bool buttonLoading});
}

/// @nodoc
class __$$_InformationPageStateCopyWithImpl<$Res>
    extends _$InformationPageStateCopyWithImpl<$Res, _$_InformationPageState>
    implements _$$_InformationPageStateCopyWith<$Res> {
  __$$_InformationPageStateCopyWithImpl(_$_InformationPageState _value,
      $Res Function(_$_InformationPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? chatHistory = null,
    Object? buttonLoading = null,
  }) {
    return _then(_$_InformationPageState(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      chatHistory: null == chatHistory
          ? _value._chatHistory
          : chatHistory // ignore: cast_nullable_to_non_nullable
              as List<ChatText>,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InformationPageState implements _InformationPageState {
  const _$_InformationPageState(
      {this.text = "",
      final List<ChatText> chatHistory = const <ChatText>[],
      this.buttonLoading = false})
      : _chatHistory = chatHistory;

  @override
  @JsonKey()
  final String text;
  final List<ChatText> _chatHistory;
  @override
  @JsonKey()
  List<ChatText> get chatHistory {
    if (_chatHistory is EqualUnmodifiableListView) return _chatHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatHistory);
  }

  @override
  @JsonKey()
  final bool buttonLoading;

  @override
  String toString() {
    return 'InformationPageState(text: $text, chatHistory: $chatHistory, buttonLoading: $buttonLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InformationPageState &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._chatHistory, _chatHistory) &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text,
      const DeepCollectionEquality().hash(_chatHistory), buttonLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InformationPageStateCopyWith<_$_InformationPageState> get copyWith =>
      __$$_InformationPageStateCopyWithImpl<_$_InformationPageState>(
          this, _$identity);
}

abstract class _InformationPageState implements InformationPageState {
  const factory _InformationPageState(
      {final String text,
      final List<ChatText> chatHistory,
      final bool buttonLoading}) = _$_InformationPageState;

  @override
  String get text;
  @override
  List<ChatText> get chatHistory;
  @override
  bool get buttonLoading;
  @override
  @JsonKey(ignore: true)
  _$$_InformationPageStateCopyWith<_$_InformationPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
