import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyakunyaku/modules/json_database.dart';
import 'package:nyakunyaku/modules/json_settings.dart';
import 'package:nyakunyaku/repositories/notion_repository.dart';

class SettingsProvider extends StateNotifier<JsonSettings> {
  final notionRepository = NotionRepository();
  SettingsProvider(super.state);

  void setDatabase(JsonDatabase database) {
    state = state.copyWith(targetDatabase: database);
  }

  Future<List<JsonDatabase>> fetchAllDatabase() async {
    final databases = await notionRepository.getAllDatabase();
    return databases;
  }
}

final settingsProvider = StateNotifierProvider<SettingsProvider, JsonSettings>(
  (ref) => SettingsProvider(const JsonSettings()),
);
