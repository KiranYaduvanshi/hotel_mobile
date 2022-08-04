import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/account_controller.dart';

class AccountBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AccountController());
  }

}