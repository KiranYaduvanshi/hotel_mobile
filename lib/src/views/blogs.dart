import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/blogs_controller.dart';
import 'package:hotel_mobile/utils/app_colors.dart';
import 'package:hotel_mobile/utils/routes/app_routes.dart';

import '../../utils/app_icons.dart';
import '../../utils/image_paths.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlogsController statesController = Get.find();
    return Scaffold(
      backgroundColor: AppColors.scafoldBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'blogs'.tr,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {},
              child: AppIcons.sort(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {},
              child: AppIcons.refresh(),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return blogs();
            }),
      ),
    );
  }

  Widget blogs() {
    return GestureDetector(
      onTap: (){Get.toNamed(AppRoutes.blogDetails);},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
        child: SizedBox(
          height: 280,
          child: Stack(
            children: [
              Positioned(
                bottom: 3,
                child: Container(
                  width: Get.width * 1 - 30,
                height: 140,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          "Vacation Home Demand Soars During the Covid-19 Pandemic",
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              overflow: TextOverflow.ellipsis),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                              "Home sales are booming in popular vocation spots. as the pandemic leads more Americans to seek",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 14, overflow: TextOverflow.ellipsis)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                AppIcons.clock(iconColor: Colors.grey),
                                const Text("19 October 20"),
                              ],
                            ),
                            Row(
                              children: [
                                AppIcons.heart(iconColor: Colors.grey),
                                Text("0"),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Hero(
                transitionOnUserGestures: true,
                tag: "image",

                child: Container(
                  height: 140,
                  width: Get.width * 1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: NetworkImage(ImagePaths.netImage),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
