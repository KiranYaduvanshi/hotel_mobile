import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class BlogDetailsController extends GetxController{

  late VideoPlayerController videoController;
  RxBool videoBool = false.obs;

  void videoControlle(){
    videoController.value.isPlaying
        ? videoController.pause()
        : videoController.play();

  }


  @override
  void onInit() {

    videoController=VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')..initialize().then((_) {
      videoBool.value = true;
      print("object");
      // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    });
    super.onInit();
  }
}