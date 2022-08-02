import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/src/views/blog_details/blog_details_widgets.dart';
import 'package:hotel_mobile/utils/app_colors.dart';
import 'package:hotel_mobile/utils/app_icons.dart';
import '../../controller/blog_details_controller.dart';

class BlogDetails extends StatelessWidget {
  const BlogDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlogDetailsController ccontroller = Get.find();
    BlogDetailsWidgets widgets = BlogDetailsWidgets();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: AppColors.gray,
              borderRadius: BorderRadius.circular(8),
            ),
            child: BackButton(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColors.gray,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: AppIcons.share(),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*------Time Stamp------*/
                widgets.timeStamp(),
                const SizedBox(
                  height: 8,
                ),
                /*------Title------*/
                widgets.pageTitle(),
                /*------Action Bar------*/
                widgets.actionBar(),
              ],
            ),
          ),

          /*------Image------*/
          Hero(
              tag: "image",
              transitionOnUserGestures: true,
              child: SizedBox(width: Get.width * 1, child: widgets.image())),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                /*-----Like Comment----*/
                widgets.likeComment(),
                const SizedBox(
                  height: 10,
                ),
                /*------Content-----*/
                widgets.content(),

                /*------Content-----*/
                widgets.content(),
                /*------Video View-----*/
                widgets.videoPlayerWidget(),
                /*------Content-----*/
                widgets.content(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
