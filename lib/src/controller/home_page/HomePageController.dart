import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  final pages = List.generate(
    6,
    (index) => Container(

      child: Stack(
        children: [
          Container(
            height: 180,
            // width: Get.size.width *.9,
            decoration: BoxDecoration(
            //  color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,

                image:NetworkImage("https://images.unsplash.com/photo-1503435824048-a799a3a84bf7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80")

              )
            ),

            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 9),
          ),
          Positioned(
            bottom: 10,
            left: 40,
            right: 40,
            child: Container(
              height: 100,
              width: Get.size.width*.60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 2
                )]
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 8.0),
                    child: Text("Patenga Sea Beach",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,color: Colors.grey,
                          size: 16,
                        ),
                        Text("Patenga,Chittagong",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.8,
                    color: Colors.grey.shade100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,bottom: 5),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite_border_outlined,color: Colors.orangeAccent,size: 17,),
                            Text("53",style: TextStyle(color: Colors.grey,fontSize: 16),)
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Icon(Icons.message_outlined,color: Colors.orangeAccent,size: 17,),
                            Text("14",style: TextStyle(color: Colors.grey,fontSize: 16),)

                          ],
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    ),

    //         Stack(
    //       children: [
    //         Container(
    //           constraints: BoxConstraints(minHeight: 200,maxHeight: 300),
    //           color: Colors.brown,
    //           child: Column(
    //             children:[ Center(
    //               child: Container(
    //   decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(16),
    //               color: Colors.grey.shade300,
    //   ),
    //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
    //   child: Container(
    //               height: 180,
    //               child: Center(
    //                   child: Text(
    //                     "Page $index",
    //                     style: TextStyle(color: Colors.indigo),
    //                   )),
    //   ),
    // ),
    //             ),
    //               Transform.translate(offset:
    //               Offset(0, -Get.size.width * .20),
    //                 child: Container(
    //                   height: 120,
    //                   width: 200,
    //                   color: Colors.blueGrey,
    //                 ),
    //               ),
    //           ]
    //           ),
    //         ),
    //       ],
    //     ),
  );
}
