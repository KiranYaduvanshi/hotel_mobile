import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget SearchWidget(String search){
  return Container(
    height: 60,
    width: Get.size.width * 1,
    alignment: AlignmentDirectional.topCenter,
    child: TextField(
      onChanged: (value) {},
      cursorColor: Colors.grey.shade900,
      decoration: InputDecoration(
        isDense: false,
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        fillColor: Colors.grey.shade300,
        filled: true,
        hintText: search,
        hintStyle: TextStyle(color: Colors.black, fontSize: 14),
        prefixIcon: const Icon(
          CupertinoIcons.search,
          size: 18,
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
  );
}