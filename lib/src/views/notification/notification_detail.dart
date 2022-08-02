import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black,),
        title: Text("Notification Details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.watch_later_rounded,color: Colors.grey,size: 20,),
                  SizedBox(
                    width: 3,
                  ),
                  Text("30 Jul,2022",style: TextStyle(color: Colors.grey,fontSize: 14),)
                ],
              ),
            ),
             Container(
               margin: const EdgeInsets.only(left: 10,top: 7),
                 child: const Text("Flat 40% off for TravelHour App!",
                   style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 18),),),

            Container(
              margin: const EdgeInsets.only(left: 10,top: 8),
              width: Get.width *.75,
              height: 2,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}