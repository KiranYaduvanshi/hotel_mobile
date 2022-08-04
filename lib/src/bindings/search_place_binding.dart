import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/search_place_controller.dart';

class SearchPlaceBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SearchPlaceController());
  }
}