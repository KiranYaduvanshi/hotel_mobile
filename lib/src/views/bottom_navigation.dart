import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/src/controller/bottom_navigation_controller.dart';
import 'package:hotel_mobile/utils/app_colors.dart';
import 'package:hotel_mobile/utils/app_icons.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavigationController bottomNavigationController = Get.find();
    return Scaffold(
      body: WillPopScope(
        onWillPop: bottomNavigationController.onWillPop,
        child: Obx(()=>
          Center(
            child: BottomNavigationController.widgetOptions.elementAt(bottomNavigationController.selectedIndex.value),
          ),
        ),
      ),
      bottomNavigationBar:  Theme(
        data:  Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,
            splashFactory: InkRipple.splashFactory,
            splashColor: AppColors.lightPurple,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.blue,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: const TextStyle(color: AppColors.lightPurple))), // sets the inactive color of the `BottomNavigationBar`

        child: Obx(()=>
          BottomNavigationBar(

            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: AppIcons.home(),
                label: " ",
              ),
              BottomNavigationBarItem(
                icon:AppIcons.category(),
                label: " ",
              ),
              BottomNavigationBarItem(
                icon: AppIcons.list(),
                label: " ",
              ),
              BottomNavigationBarItem(
                icon: AppIcons.saved(),
                label: " ",
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                    splashColor:AppColors.lightPurple ,child: AppIcons.person()),
                label: " ",    )        ],
            currentIndex: bottomNavigationController.selectedIndex.value,
            selectedItemColor: AppColors.lightPurple,
            selectedIconTheme: IconThemeData(size: 32),
            unselectedItemColor: Colors.black87,
            type: BottomNavigationBarType.fixed,
            onTap: bottomNavigationController.onItemTapped,
          ),
        ),
      ),
    );
  }
}
