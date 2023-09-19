import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:translator_app/models/language.dart';

class Storage {
  Storage._();
  static final instance = Storage._();

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _supportedLanguagesFile async {
    final path = await _localPath;
    return File('$path/supportedLanguages.json');
  }

  Future<List<Language>?> getSupportedLanguages() async {
    final file = await _supportedLanguagesFile;
    if (await file.exists()) {
      try {
        final jsonString = await file.readAsString();
        return jsonDecode(jsonString);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  writeSupportedLanguages(List<Language> listLanguages) async {
    final jsonString = json.encode(listLanguages);
    final file = await _supportedLanguagesFile;
    file.writeAsString(jsonString);
  }
}
