import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/state_city_list_controller.dart';

class StateCityListBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => StateCityListController());
  }
}