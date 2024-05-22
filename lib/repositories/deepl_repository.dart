import 'package:deepl_dart/deepl_dart.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum SourceLang { en, ja }

class DeepLRepository {
  final _translator = Translator(authKey: dotenv.get('DEEPL_API_KEY'));

  // 使用用途は限られているため、日本語英語変換のみ対応する
  Future<String> translate(String text, SourceLang lang) async {
    final sourceLang = lang == SourceLang.en ? 'en' : 'ja';
    final targetLang = lang == SourceLang.en ? 'ja' : 'en';
    final translation = await _translator.translateTextSingular(
      text,
      targetLang,
      sourceLang: sourceLang,
    );
    return translation.text;
  }
}
