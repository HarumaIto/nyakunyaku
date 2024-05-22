import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class NotionRepository {
  final String url = 'https://api.notion.com/v1';

  Map<String, String> headers = {
    'Content-type': 'application/json',
    "Authorization": "Bearer ${dotenv.get('NOTION_TOKEN')}",
    "Notion-Version": "2022-06-28"
  };

  Future<Response> getAllPages() async {
    // クエリを空にすると全てのページを取得できる
    final requestBody = json.encode({
      'query': '',
      'filter': {"value": "page", "property": "object"},
    });

    final response = await http.post(
      Uri.parse('$url/search'),
      headers: headers,
      body: requestBody,
    );
    return response;
  }

  Future<Response> getAllDatabase() async {
    final body = json.encode({
      'query': '',
      'filter': {"value": "database", "property": "object"},
    });
    final response = await http.post(
      Uri.parse('$url/search'),
      headers: headers,
      body: body,
    );
    return response;
  }
}
