import 'package:translator_app/models/language.dart';

import 'api_client.dart';

class ApiRepository {
  final ApiClient _apiClient = ApiClient();

  Future<List<Language>?> getListSupportedLanguage() async {
    return await _apiClient.getSupportedLanguages();
  }
}
