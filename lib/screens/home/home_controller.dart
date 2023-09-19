import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:translator_app/domain/api_client.dart';
import 'package:translator_app/models/language.dart';
import 'package:translator_app/utils/shared_preferences.dart';

import 'package:translator_app/utils/storage.dart';

enum LanguageType { source, target }

class HomeController extends GetxController {
  var listLanguages = List<Language>.empty().obs;
  var sourceLanguage = 'English'.obs;
  var targetLanguage = 'Vietnamese'.obs;
  var translationText = ''.obs;

  final textEditingController = TextEditingController();
  final ApiClient _apiClient = GetInstance().find<ApiClient>();

  @override
  void onInit() {
    // TODO: Fetch API
    fetchSupportedLanguages();
    fetchCurrentLanguage();
    super.onInit();
  }

  fetchSupportedLanguages() async {
    final listLanguages = await Storage.instance.getSupportedLanguages();
    if (listLanguages == null) {
      _apiClient.getSupportedLanguages().then((result) {
        List<Language>? data = result;
        if (data != null) {
          this.listLanguages.value = data;
          Storage.instance.writeSupportedLanguages(data);
        }
      });
    } else {
      this.listLanguages.value = listLanguages;
    }
    update();
  }

  fetchCurrentLanguage() async {
    sourceLanguage.value =
        await Shared.instance.getSourceLanguage() ?? 'English';
    targetLanguage.value =
        await Shared.instance.getTargetLanguage() ?? 'Vietnamese';
  }

  didSelectLanguage(LanguageType type, String language) {
    switch (type) {
      case LanguageType.source:
        sourceLanguage.value = language;
        Shared.instance.saveSourceLanguage(language);
        break;
      default:
        targetLanguage.value = language;
        Shared.instance.saveTargetLanguage(language);
    }
  }
}
