import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/widget/home_widget_class.dart';

class BookMarkScreen extends StatelessWidget{
  const BookMarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,

      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text('bookmark'.tr,style: TextStyle(color: Colors.black),),
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            indicatorWeight: 2.4,
            indicatorPadding: EdgeInsets.only(top: 8,left: 8,right: 8),
            tabs: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Saved Places",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Saved Blogs",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),
            ],
          ),

        ),
        body: TabBarView(
          children: [
            savePlaces(),
            savePlaces()

          ],
        ),

      ),
    );
 }

 Widget savePlaces(){
    return SingleChildScrollView(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          reverse: false,
          itemCount: 4,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context , int index){
            return placesWidget();


          }),
    );

 }
}