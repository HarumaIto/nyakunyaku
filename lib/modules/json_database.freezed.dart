// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JsonDatabase _$JsonDatabaseFromJson(Map<String, dynamic> json) {
  return _JsonDatabase.fromJson(json);
}

/// @nodoc
mixin _$JsonDatabase {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonDatabaseCopyWith<JsonDatabase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonDatabaseCopyWith<$Res> {
  factory $JsonDatabaseCopyWith(
          JsonDatabase value, $Res Function(JsonDatabase) then) =
      _$JsonDatabaseCopyWithImpl<$Res, JsonDatabase>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$JsonDatabaseCopyWithImpl<$Res, $Val extends JsonDatabase>
    implements $JsonDatabaseCopyWith<$Res> {
  _$JsonDatabaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JsonDatabaseImplCopyWith<$Res>
    implements $JsonDatabaseCopyWith<$Res> {
  factory _$$JsonDatabaseImplCopyWith(
          _$JsonDatabaseImpl value, $Res Function(_$JsonDatabaseImpl) then) =
      __$$JsonDatabaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$JsonDatabaseImplCopyWithImpl<$Res>
    extends _$JsonDatabaseCopyWithImpl<$Res, _$JsonDatabaseImpl>
    implements _$$JsonDatabaseImplCopyWith<$Res> {
  __$$JsonDatabaseImplCopyWithImpl(
      _$JsonDatabaseImpl _value, $Res Function(_$JsonDatabaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$JsonDatabaseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsonDatabaseImpl implements _JsonDatabase {
  const _$JsonDatabaseImpl({this.id = '', this.title = ''});

  factory _$JsonDatabaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonDatabaseImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'JsonDatabase(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonDatabaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonDatabaseImplCopyWith<_$JsonDatabaseImpl> get copyWith =>
      __$$JsonDatabaseImplCopyWithImpl<_$JsonDatabaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonDatabaseImplToJson(
      this,
    );
  }
}

abstract class _JsonDatabase implements JsonDatabase {
  const factory _JsonDatabase({final String id, final String title}) =
      _$JsonDatabaseImpl;

  factory _JsonDatabase.fromJson(Map<String, dynamic> json) =
      _$JsonDatabaseImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$JsonDatabaseImplCopyWith<_$JsonDatabaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
