import 'package:flutter/material.dart';
import 'package:hotel_mobile/src/views/place_detail/place_widget.dart';

class PlaceDetailScreen extends StatelessWidget{
  // PlaceDetailController controller = Get.find();
  PlaceWidget _placeWidget = PlaceWidget();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [

              
              /*----Imageslider----*/
             _placeWidget.imageSliderWidget(),

              /* ----Place Description---- */
              _placeWidget.placeDescriptionWidget(),

              /*--- To Do Widget----*/
              _placeWidget.toDoWidget(),

              /* --- you might like place ----*/
              _placeWidget. youMightLikeWidget(),

              /* --- video player --- */
              _placeWidget. videoPlayerWidget()

            ],
          ),
        ),
      ),
    );
  }


}