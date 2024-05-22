import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyakunyaku/modules/json_settings.dart';

class SettingsProvider extends StateNotifier<JsonSettings> {
  SettingsProvider(super.state);

  void setDatabaseId(String id) {
    state = state.copyWith(targetDatabaseId: id);
  }
}

final settingsProvider = StateNotifierProvider<SettingsProvider, JsonSettings>(
  (ref) => SettingsProvider(const JsonSettings()),
);
