// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JsonSettingsImpl _$$JsonSettingsImplFromJson(Map<String, dynamic> json) =>
    _$JsonSettingsImpl(
      sourceLang: json['sourceLang'] as String? ?? 'en',
      targetLang: json['targetLang'] as String? ?? 'ja',
      targetDatabaseId: json['targetDatabaseId'] as String? ?? '',
    );

Map<String, dynamic> _$$JsonSettingsImplToJson(_$JsonSettingsImpl instance) =>
    <String, dynamic>{
      'sourceLang': instance.sourceLang,
      'targetLang': instance.targetLang,
      'targetDatabaseId': instance.targetDatabaseId,
    };
