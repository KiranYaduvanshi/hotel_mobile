import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/nearby_places_controller.dart';

class NearbyPlacesBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => NearbyController());
  }
}