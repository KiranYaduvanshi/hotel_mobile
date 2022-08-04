
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimens {

  static double vH = Get.height*1/100;
  static double vW = Get.width*1/100;
  // margins
  static const double margin = 16.0;
  static const double marginLarge = 18.0;
  static const double marginExtraLarge = 22.0;
  static const double marginSmall = 12.0;
  static const double largeSpace = 35.0;

// font sizes
  static  double fontExtraSmall = 10.0;
  static  double fontSmall = vW*4;
  static  double fontMedium = vW*6;
  static  double fontNormal = 16.0;
  static  double fontLarge = 21.0;
  static  double fontExtraLarge = 25.0;

// padding
  static const double padding2px = 2.0;
  static const double smallPadding = 8.0;
  static const double extraSmallPadding = 5.0;
  static const double mediumPadding = 12.0;
  static const double padding = 16.0;

// elevation
  static const double elevationNormal = 6.0;

  //TextFiled
  static const double borderRadius = 10.0;

  // Extra
  static const double roundBtRadius = 20.0;

  init(){
   if(Get.width < 600){
     fontSmall = 10;
     fontMedium = 14;
   }else{
     fontSmall = 18;
     fontMedium = 24;
   }
  }
}