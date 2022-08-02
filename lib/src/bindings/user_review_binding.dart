import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/user_review_controller.dart';

class UserReviewBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => UserReviewController());
  }
}