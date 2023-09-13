import 'package:shared_preferences/shared_preferences.dart';

class Shared {
  Shared._();
  static final instance = Shared._();

  Future<void> saveSourceLanguage(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('sourceLanguage', value);
  }

  Future<String?> getSourceLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('sourceLanguage');
  }

  Future<void> saveTargetLanguage(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('targetLanguage', value);
  }

  Future<String?> getTargetLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('targetLanguage');
  }
}
