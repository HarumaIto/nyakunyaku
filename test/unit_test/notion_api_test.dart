import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nyakunyaku/repositories/notion_repository.dart';

void main() {
  setUpAll(() async {
    await dotenv.load(fileName: 'assets/env/.env');
  });

  test('Get Notion Pages', () async {
    NotionRepository notionRepository = NotionRepository();
    final response = await notionRepository.getAllPages();
    print(response.body);
    expect(response.statusCode, 200);
  });
}
