import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translator_app/domain/api_client.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class TranslateController extends GetxController {
  final sourceLanguage = 'en';
  final targetLanguage = 'vi';
  final textEditingController = TextEditingController();
  final resultTextEditingController = TextEditingController();
  final _apiClient = GetInstance().find<ApiClient>();

  late StreamSubscription<bool> _keyboarVisibleSubscription;

  @override
  void onInit() {
    textEditingController.addListener(() {
      Future.delayed(const Duration(milliseconds: 200), () {
        translateText(textEditingController.text.trim());
      });
    });
    _keyboarVisibleSubscription =
        KeyboardVisibilityController().onChange.listen((event) {
      if (!event && textEditingController.value.text.isEmpty) {
        Get.back();
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    textEditingController.removeListener(() {});
    _keyboarVisibleSubscription.cancel();
    super.onClose();
  }

  translateText(String text) async {
    final result =
        await _apiClient.translateText(text, sourceLanguage, targetLanguage);
    if (result != null && result.isNotEmpty) {
      resultTextEditingController.text = result.first.translatedText;
    }
  }
}
