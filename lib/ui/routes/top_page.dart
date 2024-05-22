import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyakunyaku/repositories/deepl_repository.dart';

class TopPage extends HookConsumerWidget {
  TopPage({super.key});

  final deeplRepository = DeepLRepository();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = useTextEditingController();
    final translation = useState<String>('');

    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('翻訳したい文章を入力してください'),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      controller: textEditingController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '翻訳したい文章を入力してください',
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () async {
                      translation.value = await deeplRepository.translate(
                        textEditingController.text,
                        SourceLang.en,
                      );
                    },
                    child: const Text('翻訳'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('翻訳結果'),
              Text(translation.value),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          mini: true,
          onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },
          backgroundColor: Colors.grey,
          child: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ));
  }
}
