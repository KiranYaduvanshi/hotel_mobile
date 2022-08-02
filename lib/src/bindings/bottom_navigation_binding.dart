import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/bottom_navigation_controller.dart';
import 'package:hotel_mobile/src/controller/home_page/HomePageController.dart';
import '../controller/blogs_controller.dart';
import '../controller/states_controller,dart.dart';

class BottomNavigationBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>BottomNavigationController());
    Get.lazyPut(() => StatesController());
    Get.lazyPut(() => BlogsController());
    Get.lazyPut(() => HomePageController());
  }

}