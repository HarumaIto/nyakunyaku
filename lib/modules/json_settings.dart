import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nyakunyaku/repositories/deepl_repository.dart';

// 自動生成コマンド: flutter pub run build_runner build --delete-conflicting-outputs

part 'json_settings.freezed.dart';
part 'json_settings.g.dart';

@freezed
class JsonSettings with _$JsonSettings {
  const factory JsonSettings({
    @Default('en') String sourceLang,
    @Default('ja') String targetLang,
    @Default('') String targetDatabaseId,
  }) = _JsonSettings;

  factory JsonSettings.fromJson(Map<String, dynamic> json) =>
      _$JsonSettingsFromJson(json);
}
