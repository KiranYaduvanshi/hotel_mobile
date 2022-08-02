import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/src/views/home/home_page.dart';
import 'package:hotel_mobile/src/views/states.dart';
import 'package:hotel_mobile/utils/logs_toasts.dart';

import '../views/blogs.dart';
import '../views/bookmark.dart';
import '../views/home.dart';

class BottomNavigationController extends GetxController{

  DateTime? currentBackPressTime;
  // List<Widget> _tabs = [
  //   Home(),
  //   Home(),
  //   Home(),
  //   Home(),
  //   Home(),
  // ];
  RxInt selectedIndex = 0.obs;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOptions = <Widget>[
     HomePage(),
    StatesScreen(),
    Blogs(),
    BookMarkScreen(),
    Home(),
  ];

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      print("haha");
      ToastLogger().toastSucess("Press again to exit app");
      return Future.value(false);
    }
    return Future.value(true);
  }

  void onItemTapped(int index) {
      selectedIndex.value = index;

  }
  @override
  void onInit() {
    super.onInit();
  }
}