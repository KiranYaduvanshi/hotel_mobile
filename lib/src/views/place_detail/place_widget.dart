//--------Image Slider Widget
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:video_player/video_player.dart';

import '../../../utils/app_strings.dart';
import '../../../utils/image_path.dart';
import '../../../utils/routes/app_routes.dart';
import '../../controller/place_detail_controller.dart';
import '../home/widget/home_widget_class.dart';

class PlaceWidget {
  PlaceDetailController controller = Get.find();

  Widget imageSliderWidget() {
    return Stack(
      children: [
        Container(
          height: 250,
          child: PageView(
            /// [PageView.scrollDirection] defaults to [Axis.horizontal].
            /// Use [Axis.vertical] to scroll vertically.
            controller: controller.controller,
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: NetworkImage(ImagePath.url2))),
              ),
              Container(
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: NetworkImage(ImagePath.url))),
              ),
              Container(
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: NetworkImage(ImagePath.url3))),
              )
            ],
          ),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                  controller: controller.controller,
                  count: 3,
                  effect: const ScrollingDotsEffect(
                      activeStrokeWidth: 2.6,
                      activeDotScale: 1.5,
                      maxVisibleDots: 5,
                      radius: 8,
                      spacing: 10,
                      dotHeight: 8,
                      dotWidth: 8,
                      dotColor: Colors.white,
                      activeDotColor: Colors.white)),
            ))
      ],
    );
  }

//---------PlacesDiscription
  Widget placeDescriptionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(
                          Icons.location_on_sharp,
                          color: Colors.grey,
                          size: 16,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: 'Volagonj, Sylhet',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.bookmark_border_outlined,
                    color: Colors.black,
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "Volagonj Sada Pathor",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0, top: 8),
          height: 2,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blue),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 7, left: 10),
              child: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(
                          Icons.favorite_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: '125 ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w900),
                    ),
                    TextSpan(
                      text: ' People like this',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 7, left: 10),
              child: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(
                          Icons.messenger_outline_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: ' 63 ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        fullDescWidget(),
        imageVideoDescWidget()
      ],
    );
  }

//------place description widget(Text)
  Widget fullDescWidget() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        AppStrings.lorem,
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
      ),
    );
  }

//--- Image/Video With Description Widget
  Widget imageVideoDescWidget() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(AppRoutes.photoView, arguments: [
              {"image": ImagePath.url3}
            ]);
          },
          child: Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      ImagePath.url3,
                    ))),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              AppStrings.lorem,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
            )),
      ],
    );
  }

//-- to do widget
  Widget toDoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "To Do",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0, top: 8),
          height: 2,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blue),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            toDoOptionWidget(Colors.blue, Icons.add, "Travel Guide"),
            toDoOptionWidget(Colors.orange, Icons.add, "Nearby Hotels"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            toDoOptionWidget(Colors.pink, Icons.add, "Nearby Restaurants"),
            toDoOptionWidget(Colors.blue.shade800, Icons.add, "user Reviews"),
          ],
        ),
      ],
    );
  }

//--to do options widget
  Widget toDoOptionWidget(Color color, IconData iconData, String title) {
    return Container(
      height: 100,
      width: Get.size.width * .43,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade100, blurRadius: 2)
                ]),
            child: Center(
              child: Icon(
                iconData,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              title,
              maxLines: 2,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }

//-- you might like widget
  Widget youMightLikeWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "You might also like",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0, top: 8),
          height: 2,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blue),
        ),
        Container(
          height: 250,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return popularPlaces(
                  "https://images.unsplash.com/photo-1518182170546-07661fd94144?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
                );
              }),
        ),
      ],
    );
  }

// ---- Video Player

  Widget videoPlayerWidget() {
    return Stack(
      children: [
        Obx(
          () => Padding(
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
              child: ElevatedButton(
                onPressed: () {
                  controller.videoControlle();
                },
                child: Icon(
                  controller.videoController.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
