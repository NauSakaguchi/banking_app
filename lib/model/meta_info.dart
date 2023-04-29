import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_info.freezed.dart';

@freezed
class MetaInfo with _$MetaInfo {
  const factory MetaInfo({
    @Default('') String email,
    @Default('') String idToken,
  }) = _MetaInfo;
}
