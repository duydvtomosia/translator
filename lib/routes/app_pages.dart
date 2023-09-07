import 'package:get/get.dart';
import 'package:translator_app/screens/home/home_binding.dart';

import 'package:translator_app/screens/screens.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
