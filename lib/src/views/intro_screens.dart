import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/intro_screen_controller.dart';
import 'package:hotel_mobile/utils/image_path.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    InteroScreenController controller = Get.find();
    return SafeArea(child: Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                height: Get.size.height *.8,
                child:           PageView(
                  /// [PageView.scrollDirection] defaults to [Axis.horizontal].
                  /// Use [Axis.vertical] to scroll vertically.
                  controller: controller.controller,
                  children:  <Widget>[
                    Center(
                      child: introScreenWidget(ImagePath.url,"No Matter Where Are You", """Access to important info about your destinaton
                      before and during 
                      you travel """),
                    ),
                    Center(
                      child: introScreenWidget(ImagePath.url2,"Explore Nearby Stuffs", "Explore nearby hotels & restaurantsnear tourist spot with theeasiest way... "),
                    ),
                    Center(
                      child: introScreenWidget(ImagePath.url3,"Realtime Travel Guide", "Get Direction, Costs and othertravel-related stuff in one place..you travel "),
                    ),                  ],
                )
                ,
              ),

              Center(
                child: SmoothPageIndicator(
                  controller: controller.controller,
                  count:  3,
                  effect:  ScrollingDotsEffect(
                    activeStrokeWidth: 2.6,
                    activeDotScale: 1.3,
                    maxVisibleDots: 5,
                    radius: 8,
                    spacing: 10,
                    dotHeight: 10,
                    dotWidth: 10,
                  )
                ),
              ),
            ],
          ),

          Container(
            alignment: Alignment.bottomCenter,
            width: 220,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Colors.blue,

                borderRadius: BorderRadius.circular(25),

              boxShadow: [BoxShadow(
                blurRadius: 1,
                color: Colors.grey.shade200
              )]
            ),
            child: Center(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Get Started",style: TextStyle(color: Colors.white),),
            )),
          ),

        ],
      ),
    ),

    );
  }

  Widget introScreenWidget(String url, String title,String description){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Image.network(url,height: Get.size.height *.5,
          width: double.infinity,
          fit: BoxFit.fitWidth,),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(title,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
        ),
        Container(
          
          height: 2,
          width: 200,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          width: Get.size.width *.5,
            child: Text(description,maxLines: 3,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.grey),))
      ],
    );

  }


}