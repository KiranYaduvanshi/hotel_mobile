import 'package:flutter/material.dart';

class AppIcons {
  // IconData

  //Bottom Navigation ==============>
  static Icon home() => Icon(Icons.home);
  static Icon category() => Icon(Icons.category);
  static Icon list() => Icon(Icons.list);
  static Icon search() => Icon(Icons.search);
  static Icon saved() => Icon(Icons.bookmark_border);
  static Icon person() => Icon(Icons.person);
  //<=========== Bottom Navigation

  //Action Bar ===========>
  static Icon refresh({Color iconColor = Colors.black}) => Icon(Icons.refresh , color: iconColor ,);
  static Icon share({Color iconColor = Colors.black}) => Icon(Icons.share , color: iconColor ,);
  static Icon sort({Color iconColor = Colors.black}) => Icon(Icons.sort , color: iconColor);
  static Icon notification({Color iconColor = Colors.black}) => Icon(Icons.notifications_none_rounded , color: iconColor);
  //<=========Action Bar

  //Account Icons===========>
  static Icon accountIcon({Color iconColor = Colors.black}) => Icon(Icons.login , color: iconColor);
  static Icon rightArrow({Color iconColor = Colors.black}) => Icon(Icons.chevron_right , color: iconColor);
  //<===========Account Icons

  static Icon clock({Color iconColor = Colors.black}) => Icon(Icons.timer , color: iconColor);
  static Icon heart({Color iconColor = Colors.black}) => Icon(Icons.favorite_outlined , color: iconColor);
  static Icon share2({Color iconColor = Colors.blue}) => Icon(Icons.share , color: iconColor);
  static Icon comment({Color iconColor = Colors.white}) => Icon(Icons.messenger_outline , color: iconColor);
}
