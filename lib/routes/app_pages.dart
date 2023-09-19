import 'package:get/get.dart';
import 'package:translator_app/screens/home/home_binding.dart';
import 'package:translator_app/screens/record/record_binding.dart';

import 'package:translator_app/screens/screens.dart';
import 'package:translator_app/screens/translate/translate_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.translate,
      page: () => const TranslateView(),
      binding: TranslateBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.record,
      page: () => const RecordView(),
      binding: RecordBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
