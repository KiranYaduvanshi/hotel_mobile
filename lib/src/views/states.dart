import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/states_controller,dart.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/app_icons.dart';

class StatesScreen extends StatelessWidget {
  const StatesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StatesController statesController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'states'.tr,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {},
              child: AppIcons.refresh(),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child:  ListView.builder(
          itemCount: statesController.statesName.length,
          itemBuilder: (BuildContext context, int index) {
            return states(index);
          }),
      ),
    );
  }

  Widget states(int index){

    StatesController statesController = Get.find();
    return  Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: Container(
        height: Get.size.height * .18,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          image: const DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80"),
              fit: BoxFit.fitWidth),
        ),
        child: Text(
          "${statesController.statesName[index].toUpperCase()}",
          style: TextStyle(color: Colors.white.withOpacity(.9), fontSize: 24 , fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
