import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:translator_app/routes/app_pages.dart';
import 'package:translator_app/screens/home/home_binding.dart';
import 'package:translator_app/screens/screens.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Translator',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
          background: Colors.black,
          secondary: Colors.red.shade200,
          surface: Colors.white,
          outline: Colors.grey.shade800,
        ),
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      home: const HomePage(),
      initialBinding: HomeBinding(),
      getPages: AppPages.routes,
    );
  }
}
