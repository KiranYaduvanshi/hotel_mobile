import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/utils/routes/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/HomePageController.dart';
import 'widget/home_widget_class.dart';
import 'widget/search_widget.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    HomePageController controller =Get.find();

    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Travel Hour",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                        Text("Explore",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.grey),)

                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade800,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text("K",style: TextStyle(color: Colors.white,),),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(
                  10),
              child:SearchWidget("Search Places") ,),

             Container(
               height: 220,
               width: 800,
               // constraints: BoxConstraints(minHeight: 200,maxHeight: 300),
               child:
               PageView(

                 onPageChanged: (index) {
                 },
                 controller: controller.controller,
                 children: [
                 ...controller.pages,
                   ]
                 ,
               ),


               // PageView.builder(
               //   padEnds: true,
               //   pageSnapping: true,
               //   reverse: false,
               //   controller: controller.controller,
               //   // itemCount: pages.length,
               //   itemBuilder: (_, index) {
               //     return controller.pages[index % controller.pages.length];
               //   },
               // ),
             ),
             Center(
               child: SmoothPageIndicator(
                   controller: controller.controller,
                   count:  controller.pages.length,
                   effect:  ExpandingDotsEffect(
                     dotHeight: 5.0,
                     dotWidth:5.0,
                     activeDotColor: Colors.black,
                   ),
               ),
             ),

              headingWidget("Popular Places"),


                Container(
                  height: 250,
                  child: ListView.builder(
                    itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context , int index){
                  return  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.placeDetail);
                    },
                    child: popularPlaces("https://images.unsplash.com/photo-1517328894681-0f5dfabd463c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
                        ),
                  );

                  }),
                ),
              headingWidget("Recently Added"),

              Container(
                height: 250,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context , int index){
                      return  popularPlaces("https://images.unsplash.com/photo-1518182170546-07661fd94144?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
                          );
                    }),
              ),

              headingWidget("Places in Sylhet"),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  reverse: false,
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context , int index){
                    return placesWidget();
                  }),


              headingWidget("Recommended Places"),
              ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  reverse: false,
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context , int index){
                    return  recommendedPlaces("https://images.unsplash.com/photo-1484536831193-ff11d0792d3d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
                        );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}