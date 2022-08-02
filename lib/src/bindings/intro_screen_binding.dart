import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/intro_screen_controller.dart';

class IntroScreenBinidng implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => InteroScreenController());
  }
}