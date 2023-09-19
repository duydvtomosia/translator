import 'package:get/get.dart';
import 'package:translator_app/screens/record/record_controller.dart';

class RecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecordController());
  }
}
