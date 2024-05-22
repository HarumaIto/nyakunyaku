import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyakunyaku/providers/settings_provider.dart';
import 'package:nyakunyaku/repositories/notion_repository.dart';

class SettingsPage extends HookConsumerWidget {
  SettingsPage({super.key});

  final notionRepository = NotionRepository();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(settingsProvider);

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
              title: const Text('NotionのデータベースID'),
              subtitle: Text(provider.targetDatabaseId),
            ),
          ],
        ),
      ),
    );
  }
}
