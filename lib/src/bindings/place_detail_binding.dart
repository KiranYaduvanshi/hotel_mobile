import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/place_detail_controller.dart';

class PlaceDetailBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PlaceDetailController());
  }
}