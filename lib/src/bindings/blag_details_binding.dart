import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/blog_details_controller.dart';

class BlogDetailsBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BlogDetailsController());
  }

}