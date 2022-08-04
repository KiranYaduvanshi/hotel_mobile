import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SelectLanguage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.close_rounded,color: Colors.black,), onPressed: () {  },),
        backgroundColor: Colors.white,
        title: "Select Language".text.size(18).bold.black.make(),
      ),
      body: Column(
        children: [
          selectLanguageWidget("English"),
           selectLanguageWidget("Spanish"),
           selectLanguageWidget("Arabic"),
        ],
      ),

    );
  }
  Widget selectLanguageWidget(String lang){
    return Container(
      // margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(13),
      color: Colors.grey.shade100,
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.language,color: Colors.grey,),
              SizedBox(width: 20),

              lang.text.size(14).color(Colors.grey).make()
            ],
          ),
          Divider(thickness: 1,color: Colors.grey,)

        ],
      ),
    );
  }
}