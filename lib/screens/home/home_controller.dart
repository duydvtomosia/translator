import 'package:get/get.dart';
import 'package:translator_app/models/language.dart';

class HomeController extends GetxController {
  var listLanguages = List<Language>.empty().obs;
  @override
  void onInit() {
    // TODO: Fetch API
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: show intro dialog
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: called just before the Controller is deleted from memory
    super.onClose();
  }
}
