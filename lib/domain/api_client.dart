import 'dart:convert';

import 'package:get/get.dart';
import 'package:translator_app/models/data.dart';
import 'package:translator_app/models/language.dart';

class _APIs {
  static const String key = 'AIzaSyBHK3hbKRvoHj-LxhYDwGC67d0ws_GtkYc';
  static const String baseUrl =
      'https://translation.googleapis.com/language/translate/v2';
}

class ApiClient extends GetConnect {
  final Map<String, dynamic> _keyQuery = {'key': _APIs.key};

  @override
  void onInit() {
    httpClient.baseUrl = _APIs.baseUrl;
    super.onInit();
  }

  Future<List<Language>?> getSupportedLanguages() async {
    FormData form = FormData({
      'target': 'en',
    });
    try {
      final response = await post('/languages', form, query: _keyQuery);
      if (response.statusCode == 200 && response.bodyString != null) {
        final jsonResponse = json.decode(response.bodyString!);
        final listSupportedLanguage = Data.fromJson(jsonResponse['data']).languages;
        return listSupportedLanguage;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
