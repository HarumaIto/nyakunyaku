// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JsonSettings _$JsonSettingsFromJson(Map<String, dynamic> json) {
  return _JsonSettings.fromJson(json);
}

/// @nodoc
mixin _$JsonSettings {
  String get sourceLang => throw _privateConstructorUsedError;
  String get targetLang => throw _privateConstructorUsedError;
  JsonDatabase? get targetDatabase => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonSettingsCopyWith<JsonSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonSettingsCopyWith<$Res> {
  factory $JsonSettingsCopyWith(
          JsonSettings value, $Res Function(JsonSettings) then) =
      _$JsonSettingsCopyWithImpl<$Res, JsonSettings>;
  @useResult
  $Res call(
      {String sourceLang, String targetLang, JsonDatabase? targetDatabase});

  $JsonDatabaseCopyWith<$Res>? get targetDatabase;
}

/// @nodoc
class _$JsonSettingsCopyWithImpl<$Res, $Val extends JsonSettings>
    implements $JsonSettingsCopyWith<$Res> {
  _$JsonSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceLang = null,
    Object? targetLang = null,
    Object? targetDatabase = freezed,
  }) {
    return _then(_value.copyWith(
      sourceLang: null == sourceLang
          ? _value.sourceLang
          : sourceLang // ignore: cast_nullable_to_non_nullable
              as String,
      targetLang: null == targetLang
          ? _value.targetLang
          : targetLang // ignore: cast_nullable_to_non_nullable
              as String,
      targetDatabase: freezed == targetDatabase
          ? _value.targetDatabase
          : targetDatabase // ignore: cast_nullable_to_non_nullable
              as JsonDatabase?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JsonDatabaseCopyWith<$Res>? get targetDatabase {
    if (_value.targetDatabase == null) {
      return null;
    }

    return $JsonDatabaseCopyWith<$Res>(_value.targetDatabase!, (value) {
      return _then(_value.copyWith(targetDatabase: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JsonSettingsImplCopyWith<$Res>
    implements $JsonSettingsCopyWith<$Res> {
  factory _$$JsonSettingsImplCopyWith(
          _$JsonSettingsImpl value, $Res Function(_$JsonSettingsImpl) then) =
      __$$JsonSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sourceLang, String targetLang, JsonDatabase? targetDatabase});

  @override
  $JsonDatabaseCopyWith<$Res>? get targetDatabase;
}

/// @nodoc
class __$$JsonSettingsImplCopyWithImpl<$Res>
    extends _$JsonSettingsCopyWithImpl<$Res, _$JsonSettingsImpl>
    implements _$$JsonSettingsImplCopyWith<$Res> {
  __$$JsonSettingsImplCopyWithImpl(
      _$JsonSettingsImpl _value, $Res Function(_$JsonSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceLang = null,
    Object? targetLang = null,
    Object? targetDatabase = freezed,
  }) {
    return _then(_$JsonSettingsImpl(
      sourceLang: null == sourceLang
          ? _value.sourceLang
          : sourceLang // ignore: cast_nullable_to_non_nullable
              as String,
      targetLang: null == targetLang
          ? _value.targetLang
          : targetLang // ignore: cast_nullable_to_non_nullable
              as String,
      targetDatabase: freezed == targetDatabase
          ? _value.targetDatabase
          : targetDatabase // ignore: cast_nullable_to_non_nullable
              as JsonDatabase?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsonSettingsImpl implements _JsonSettings {
  const _$JsonSettingsImpl(
      {this.sourceLang = 'en',
      this.targetLang = 'ja',
      this.targetDatabase = null});

  factory _$JsonSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonSettingsImplFromJson(json);

  @override
  @JsonKey()
  final String sourceLang;
  @override
  @JsonKey()
  final String targetLang;
  @override
  @JsonKey()
  final JsonDatabase? targetDatabase;

  @override
  String toString() {
    return 'JsonSettings(sourceLang: $sourceLang, targetLang: $targetLang, targetDatabase: $targetDatabase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonSettingsImpl &&
            (identical(other.sourceLang, sourceLang) ||
                other.sourceLang == sourceLang) &&
            (identical(other.targetLang, targetLang) ||
                other.targetLang == targetLang) &&
            (identical(other.targetDatabase, targetDatabase) ||
                other.targetDatabase == targetDatabase));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sourceLang, targetLang, targetDatabase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonSettingsImplCopyWith<_$JsonSettingsImpl> get copyWith =>
      __$$JsonSettingsImplCopyWithImpl<_$JsonSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonSettingsImplToJson(
      this,
    );
  }
}

abstract class _JsonSettings implements JsonSettings {
  const factory _JsonSettings(
      {final String sourceLang,
      final String targetLang,
      final JsonDatabase? targetDatabase}) = _$JsonSettingsImpl;

  factory _JsonSettings.fromJson(Map<String, dynamic> json) =
      _$JsonSettingsImpl.fromJson;

  @override
  String get sourceLang;
  @override
  String get targetLang;
  @override
  JsonDatabase? get targetDatabase;
  @override
  @JsonKey(ignore: true)
  _$$JsonSettingsImplCopyWith<_$JsonSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
