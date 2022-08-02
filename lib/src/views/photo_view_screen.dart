import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/utils/image_path.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var data = Get.arguments;
    String imageUrl = data[0]["image"];

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Icon(Icons.arrow_back,color: Colors.white,),
              ),
            ),

            Center(
              child: Container(
                alignment: Alignment.center,
                height: Get.height *.8,
                color: Colors.white,
                child: PhotoView(
                  backgroundDecoration: BoxDecoration(
                    color: Colors.white

                  ),

                  imageProvider: NetworkImage(imageUrl),
                ),
              ),
            )
        ],
        ),
      ),


    );
  }

}