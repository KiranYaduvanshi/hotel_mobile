import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/utils/app_colors.dart';
import 'package:hotel_mobile/utils/app_icons.dart';
import 'package:hotel_mobile/utils/app_strings.dart';
import 'package:hotel_mobile/utils/image_paths.dart';
import 'package:video_player/video_player.dart';

import '../../controller/blog_details_controller.dart';

class BlogDetailsWidgets {

/*---Blog Details Controller----*/
  BlogDetailsController controller = Get.find();

  /*------Time Stamp------*/
  Widget timeStamp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppIcons.clock(),
        const Text(
          "26 March 2022",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ],
    );
  }

  /*------Title------*/
  Widget pageTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What to Know About Traveling to Eleuthera",
          style:
              TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 1.3),
          maxLines: 2,
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 5,
          width: 140,
          decoration: BoxDecoration(
              color: AppColors.blue, borderRadius: BorderRadius.circular(10)),
        )
      ],
    );
  }

  /*------Menu------*/
  Widget actionBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.gray,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcons.share2(),
                  const SizedBox(
                    width: 15,
                  ),
                  Text("testerTesting"),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppIcons.category(),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppIcons.category(),
              ),
            ],
          ),
        ],
      ),
    );
  }

/*------Image------*/
  Widget image() {
    return Image.network(
      ImagePaths.netImage,
      width: Get.width * 1,
      height: Get.width * 1 * (6 / 10),
      fit: BoxFit.fitWidth,
    );
  }

/*------Like Comment------*/
  Widget likeComment() {
    return Row(
      children: [
        AppIcons.heart(),
        Text(
          "129 ",
          style: TextStyle(fontSize: 16),
        ),
        Text(
          "People like this",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(
          width: 30,
        ),
        /*----Button----*/
        Container(
          decoration: BoxDecoration(
              color: AppColors.blue, borderRadius: BorderRadius.circular(3)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AppIcons.comment(),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Comments",
                      style: TextStyle(color: Colors.white,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

/*---Content---*/
  Widget content() {
    return const Text(
       AppStrings.loremText,style: TextStyle(fontSize: 18),);}


  /*------Video View-----*/
  Widget videoPlayerWidget(){
    return Stack(
      children: [
        Obx(() =>
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: controller.videoBool.value
                    ? AspectRatio(
                  aspectRatio: controller.videoController.value.aspectRatio,
                  child: VideoPlayer(controller.videoController),
                )
                    : Container(
                  height: 100,
                  width: 100,
                  color: Colors.orangeAccent,
                ),
              ),
            ),
        ),
        Positioned(
          top: 80,
          left: 100,
          right: 100,
          child: Center(
            child: Container(
              height: 50,
              width: 50,
              child: ElevatedButton(onPressed: (){
                controller.videoControlle();

              },
                child:Icon(
                  controller.videoController.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
              ),

            ),
          ),
        )
      ],
    );

  }


}

