import 'package:freezed_annotation/freezed_annotation.dart';

part 'json_database.freezed.dart';
part 'json_database.g.dart';

@freezed
class JsonDatabase with _$JsonDatabase {
  const factory JsonDatabase({
    @Default('') String id,
    @Default('') String title,
  }) = _JsonDatabase;

  factory JsonDatabase.fromJson(Map<String, dynamic> json) =>
      _$JsonDatabaseFromJson(json);
}
