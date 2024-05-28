import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyakunyaku/modules/json_database.dart';
import 'package:nyakunyaku/providers/settings_provider.dart';
import 'package:nyakunyaku/repositories/notion_repository.dart';

class SettingsPage extends HookConsumerWidget {
  SettingsPage({super.key});

  final notionRepository = NotionRepository();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(settingsProvider);
    final notifier = ref.watch(settingsProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      //
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text('翻訳するの言語'),
              subtitle: Text(provider.sourceLang),
            ),
            const Divider(),
            ListTile(
              title: const Text('翻訳したの言語'),
              subtitle: Text(provider.targetLang),
            ),
            const Divider(),
            ListTile(
              title: const Text('選択したデータベース'),
              subtitle: Text(provider.targetDatabase?.title ?? '未選択'),
              onTap: () async {
                final databases = await notifier.fetchAllDatabase();
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: const Text('データベースを選択してください'),
                    children: databases
                        .map(
                          (e) => ListTile(
                            title: Text(e.title),
                            leading: Radio<JsonDatabase>(
                              value: e,
                              groupValue: provider.targetDatabase,
                              onChanged: (value) {
                                if (value == null) return;
                                notifier.setDatabase(value);
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
