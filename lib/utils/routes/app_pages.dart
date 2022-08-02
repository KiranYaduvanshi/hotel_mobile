import 'package:get/get.dart';
import 'package:hotel_mobile/src/bindings/blag_details_binding.dart';
import 'package:hotel_mobile/src/views/blog_details/blog_details.dart';

import '../../src/bindings/bottom_navigation_binding.dart';
import '../../src/bindings/state_city_List_binding.dart';
import '../../src/bindings/states_binding.dart';
import '../../src/views/bottom_navigation.dart';
import '../../src/views/home.dart';
import '../../src/views/state_city_list.dart';
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
    ),
    GetPage(
      name: AppRoutes.states,
      page: () => const StatesScreen(),
      binding: StatesBinding(),
    ),
    GetPage(
      name: AppRoutes.stateCity,
      page: () => const StateCityList(),
      binding: StateCityListBinding(),
      transition: Transition.leftToRight  ,
      transitionDuration: Duration(milliseconds: 300),
    ),
    GetPage(
      name: AppRoutes.blogDetails,
      page: () => const BlogDetails(),
      binding: BlogDetailsBinding(),
    ),
  ];
}
