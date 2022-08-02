import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Notifications",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
        leading: BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.refresh_outlined,color: Colors.black,),),
        ],
      ),
      body: Container(
        height: Get.height *1,
        child: ListView.builder(
          itemCount: 8,
            itemBuilder: (BuildContext context, int index){
          return notificationList();
        }),
      ),
    );

  }
  Widget notificationList(){
    return Container(
      margin: EdgeInsets.all(10),
      height: 180,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            height: 180,
            width: 5,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Flat 40% off for TravelHour App!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                Text("Hi there,Three of our products have \nbeen featured in the Envato Mid-Year sale...",style: TextStyle(color: Colors.grey,
                fontWeight: FontWeight.w200),),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.watch_later_rounded,color: Colors.grey,size: 18,),
                      Text("30 Jul,2022",style: TextStyle(color: Colors.grey,fontSize: 14),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}