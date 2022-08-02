import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/notification_controller.dart';

class NotificationBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationControlelr());
  }
}