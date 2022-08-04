import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/select_langauage_controller.dart';

class SelectLanguageBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SelectLanguageController());
  }
}