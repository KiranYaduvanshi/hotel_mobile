import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/localization/translation_string.dart';
import 'utils/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Admin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppPages.initialRoute,
      getPages: AppPages.routes,
      fallbackLocale: const Locale('en', 'US'),
      locale: const Locale('en', 'US'),
      translations: TranslationString(),
    );
  }
}
