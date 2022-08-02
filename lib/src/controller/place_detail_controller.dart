import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class PlaceDetailController extends GetxController{
  final PageController controller = PageController(initialPage: 0);
  late VideoPlayerController videoController;
  RxBool videoBool = false.obs;


  late Timer timer;

  @override
  void onInit() {

    videoController=VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')..initialize().then((_) {
          videoBool.value = true;
      // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    });
    fun();
    super.onInit();
  }
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    videoController.dispose();
  }

  void videoControlle(){
    videoController.value.isPlaying
        ? videoController.pause()
        : videoController.play();

  }
void fun(){
    int total = 0;
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if(total<3) {
        controller.animateToPage(
            total, duration: Duration(seconds: 1), curve: Curves.easeIn);
        total = total+1;

      }else{
        total = 0;
        // controller.animateToPage(
        //     total, duration: Duration(seconds: 1), curve: Curves.easeIn);

      }
      });
}
}