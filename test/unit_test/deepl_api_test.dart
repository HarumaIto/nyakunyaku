import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nyakunyaku/repositories/deepl_repository.dart';

void main() {
  setUpAll(() async {
    await dotenv.load(fileName: 'assets/env/.env');
  });

  test('Translate Text for use DeepL', () async {
    final repository = DeepLRepository();

    final text = await repository.translate('Hello', SourceLang.en);
    print(text);
    expect(text, 'こんにちは');

    final text2 = await repository.translate('世界', SourceLang.ja);
    print(text2);
    expect(text2, 'world');
  });
}
