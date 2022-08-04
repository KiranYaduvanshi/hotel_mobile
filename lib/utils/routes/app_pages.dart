import 'package:get/get.dart';
import 'package:hotel_mobile/src/bindings/blag_details_binding.dart';
import 'package:hotel_mobile/src/views/blog_details/blog_details.dart';
import 'package:hotel_mobile/src/bindings/bottom_navigation_binding.dart';
import 'package:hotel_mobile/src/bindings/intro_screen_binding.dart';
import 'package:hotel_mobile/src/bindings/notification_binding.dart';
import 'package:hotel_mobile/src/bindings/place_detail_binding.dart';
import 'package:hotel_mobile/src/views/bottom_navigation.dart';
import 'package:hotel_mobile/src/views/notification/notification_detail.dart';
import 'package:hotel_mobile/src/views/notification/notification_screen.dart';
import 'package:hotel_mobile/src/views/place_detail/place_detail.dart';
import 'package:hotel_mobile/src/views/intro_screens.dart';
import 'package:hotel_mobile/src/views/photo_view_screen.dart';
import 'package:hotel_mobile/src/views/user_reviews.dart';
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
      name: AppRoutes.introScreen,
      page: () =>  IntroScreen(),
      binding: IntroScreenBinidng(),
    ),
    GetPage(
      name: AppRoutes.placeDetail,
      page: () =>  PlaceDetailScreen(),
      binding: PlaceDetailBinding(),
    ),
    GetPage(
      name: AppRoutes.photoView,
      page: () =>  PhotoViewScreen(),
    ),
    GetPage(
      name: AppRoutes.notification,
      page: () =>  NotificationScreen(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: AppRoutes.notificationDetail,
      page: () =>  NotificationDetail(),
    ),
    GetPage(
      name: AppRoutes.userReview,
      page: () =>  UserReviewsScreen(),
    )

  ];
}
