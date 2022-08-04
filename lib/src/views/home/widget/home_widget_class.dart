import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

//--- HEADING ----
Widget headingWidget(String title)
{
  return                 Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
        ),
        Icon(Icons.arrow_forward,color:Colors.black ,)

      ],
    ),
  );
}

// ---- Popular places widget ---
Widget popularPlaces(String imageUrl,){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(

      children: [
        Container(
          height: 250,
          width: Get.size.width *.43,
          decoration: BoxDecoration(
            //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image:NetworkImage(imageUrl)
                // image:NetworkImage("https://images.unsplash.com/photo-1512389055488-8d82cb26ba6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBuZyUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80")

              )
          ),
        ),

        Positioned(
          right: 8,
          top: 10,
          child: Container(
            width: Get.size.width *.19,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.withOpacity(0.5)
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite_border_outlined,color: Colors.white,size: 18,),
                    Text("133",style: TextStyle(color: Colors.white),),
                  ],

                ),
              ),
            ),
          ),

        ),
        Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: Get.size.width *.3,
              margin: EdgeInsets.all(10.0),
              child: Text("St. Marthin's Island",
                maxLines: 2,
                style: TextStyle(color: Colors.white),
              ),
            ))
      ],
    ),
  );
}

//--- Recommended Place Widget---
Widget recommendedPlaces(String imageUrl,){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(

      children: [
        Container(
          height: 250,

          width: Get.size.width *1,
          decoration: BoxDecoration(
            //color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image:NetworkImage(imageUrl)
                // image:NetworkImage("https://images.unsplash.com/photo-1512389055488-8d82cb26ba6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBuZyUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80")

              )
          ),
        ),

        Positioned(
          right: 8,
          top: 10,
          child: Container(
            width: Get.size.width *.19,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.withOpacity(0.5)
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite_border_outlined,color: Colors.white,size: 18,),
                    SizedBox(width: 5,),
                    Text("133",style: TextStyle(color: Colors.white),),
                  ],

                ),
              ),
            ),
          ),
        ),
        Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: Get.size.width *1-16,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.size.width *.6,
                    margin: EdgeInsets.only(top: 16,left: 11),
                    child: Text("St. Marthin's Island",
                      maxLines: 2,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5,left: 10,bottom: 35),

                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,color: Colors.grey,
                          size: 17,
                        ),
                        Text("Patenga,Chittagong",style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.normal,color: Colors.grey),),
                      ],
                    ),
                  ),
                ],
              ),
            ))
      ],
    ),
  );
}

//--- Places Widget ---
Widget placesWidget(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 140,
      width: Get.width*1,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 120,
             width: Get.width *1-36,

             // margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(
                    height: 120,
                    width: 120,

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(

                        padding: const EdgeInsets.only(top: 10.0,right: 8.0),
                        child: Text("Patenga Sea Beach",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0,top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.location_on_outlined,color: Colors.grey,
                              size: 16,
                            ),
                            Text("Patenga,Chittagong",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, ),
                        child: Container(
                          height: 2,
                          width: 120,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,bottom: 5,top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_border_outlined,color: Colors.orangeAccent,size: 16,),
                                Text("53",style: TextStyle(color: Colors.grey,fontSize: 13),)
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                Icon(Icons.message_outlined,color: Colors.grey,size: 16,),
                                Text("14",style: TextStyle(color: Colors.grey,fontSize: 13),)

                              ],
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,top: 0 ,
              child:Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              //color: Colors.red,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    fit: BoxFit.fill,
                   // image:NetworkImage(imageUrl)
                   image:NetworkImage(
                       "https://images.pexels.com/photos/949587/pexels-photo-949587.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                       )

                )
            ),
          )
          )

        ],
      ),
    ),
  );
}
