import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/nearby_places_controller.dart';
import 'package:velocity_x/velocity_x.dart';

class NearbyPlacesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    NearbyController controller =Get.find();

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.greenAccent,
          height: Get.height *1,
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 160,

            child: PageView(
              /// [PageView.scrollDirection] defaults to [Axis.horizontal].
              /// Use [Axis.vertical] to scroll vertically.
              controller: controller.controller,
              children:  <Widget>[
                nearbyPlaceWidget(),
                nearbyPlaceWidget(),
                nearbyPlaceWidget(),

              ],
            ),
          ),
        ),
      ),
    );
  }

  /* nearby place widget slider */
  Widget nearbyPlaceWidget(){
    return Container(
      color:Colors.white,
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.only(right: 10,left: 10),
            decoration: BoxDecoration(
              //color: Colors.red,
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    // image:NetworkImage(imageUrl)
                    image:NetworkImage(
                        "https://images.pexels.com/photos/949587/pexels-photo-949587.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                    )
                )
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Ahar restaurant",style: TextStyle(fontSize: 14,color: Colors.black),),
              Text("Ahar restaurant",style: TextStyle(fontSize: 12,color: Colors.grey),),
              Row(
                children: [
                  VxRating(
                    size: 14,
                    normalColor: Colors.orange,
                    count: 5,
                    onRatingUpdate: (String value) {  },),
                  Text(" (4.6)",style: TextStyle(fontSize: 13,color: Colors.black),),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}