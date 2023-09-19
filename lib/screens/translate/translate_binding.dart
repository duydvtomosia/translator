import 'package:get/get.dart';
import 'package:translator_app/domain/api_client.dart';
import 'package:translator_app/screens/translate/translate_controller.dart';

class TranslateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TranslateController());
    Get.lazyPut(() => ApiClient());
  }
}
