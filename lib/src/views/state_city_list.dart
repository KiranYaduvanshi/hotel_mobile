import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/state_city_list_controller.dart';
import 'package:hotel_mobile/utils/app_colors.dart';

import '../../utils/app_icons.dart';
import '../../utils/image_paths.dart';

class StateCityList extends StatelessWidget {
  const StateCityList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    StateCityListController statesController = Get.find();
    return Scaffold(
        backgroundColor: AppColors.scafoldBackground,
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                snap: false,
                pinned: true,
                floating: false,
                automaticallyImplyLeading: false,
                flexibleSpace: const FlexibleSpaceBar(
                  titlePadding:  EdgeInsets.only(left : 10.0,bottom: 10),
                    title: Text("City List",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                        ) //TextStyle
                    ), //Text
                ), //FlexibleSpaceBar
                expandedHeight: 150,
                actions: [Padding(
                  padding: const EdgeInsets.only(right : 10.0),
                  child: GestureDetector(onTap: (){Get.back();},child: Icon(Icons.chevron_right,size: 32,),),
                )],
                backgroundColor: Colors.greenAccent[400],
              ), //SliverAppBar
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) =>blogs(),
                  childCount: statesController.statesName.length,
                ), //SliverChildBuildDelegate
              ) //SliverList
            ], //<Widget>[]
          )
    ); //Mat
  }
  Widget blogs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: SizedBox(
        height: 280,
        child: Stack(
          children: [
            Positioned(
              bottom: 3,
              child: Container(
                width: Get.width * 1-20,
                height: 140,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        "Vacation Home Demand Soars During the Covid-19 Pandemic",
                        maxLines: 2,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            overflow: TextOverflow.ellipsis),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                            "Home sales are booming in popular vocation spots. as the pandemic leads more Americans to seek",
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 14, overflow: TextOverflow.ellipsis)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              AppIcons.clock(iconColor: Colors.grey),
                              const Text("19 October 20"),
                            ],
                          ),
                          Row(
                            children: [
                              AppIcons.heart(iconColor: Colors.grey),
                              Text("0"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 140,
              width: Get.width * 1,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: NetworkImage(ImagePaths.netImage),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
