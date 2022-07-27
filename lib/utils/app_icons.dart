import 'package:flutter/material.dart';

class AppIcons {
  // IconData

  //Bottom Navigation
  static Icon home() => Icon(Icons.home);
  static Icon category() => Icon(Icons.category);
  static Icon list() => Icon(Icons.list);
  static Icon search() => Icon(Icons.search);
  static Icon saved() => Icon(Icons.bookmark_border);
  static Icon person() => Icon(Icons.person);
  //<=========== Bottom Navigation

  //Action Bar ===========>
  static Icon refresh({Color iconColor = Colors.black}) => Icon(Icons.refresh , color: iconColor ,);
  static Icon sort({Color iconColor = Colors.black}) => Icon(Icons.sort , color: iconColor);
  //<=========Action Bar

  static Icon clock({Color iconColor = Colors.black}) => Icon(Icons.timer , color: iconColor);
  static Icon heart({Color iconColor = Colors.black}) => Icon(Icons.favorite_outlined , color: iconColor);
}
