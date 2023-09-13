import 'package:get/get.dart';
import 'package:translator_app/domain/api_client.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiClient());
    Get.lazyPut(() => HomeController());
  }
}
