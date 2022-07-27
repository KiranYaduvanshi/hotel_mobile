import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/states_controller,dart.dart';

class StatesBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => StatesController());
  }

}