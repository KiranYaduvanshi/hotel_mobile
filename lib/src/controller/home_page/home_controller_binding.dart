import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/home_page/HomePageController.dart';

class HomeControllerBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}