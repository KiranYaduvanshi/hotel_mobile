import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/src/bindings/bottom_navigation_binding.dart';
import 'package:hotel_mobile/src/views/bottom_navigation.dart';

import '../../src/bindings/states_binding.dart';
import '../../src/views/home.dart';
import '../../src/views/states.dart';
import 'app_routes.dart';

class AppPages {
  static String initialRoute = AppRoutes.bottomNavigaation;
  static final routes = [
    GetPage(
        name: AppRoutes.homePage,
        page: () => const Home(),
        // binding: SplashScreenBinding()
    ),
    GetPage(
        name: AppRoutes.bottomNavigaation,
        page: () => const BottomNavigationScreen(),
        binding: BottomNavigationBinding(),
    ),    GetPage(
        name: AppRoutes.states,
        page: () => const StatesScreen(),
        binding: StatesBinding(),
    ),

  ];
}
