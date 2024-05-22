import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: Column(
        children: const [
          ListTile(
            title: Text('設定1'),
          ),
          ListTile(
            title: Text('設定2'),
          ),
          ListTile(
            title: Text('設定3'),
          ),
        ],
      ),
    );
  }
}
