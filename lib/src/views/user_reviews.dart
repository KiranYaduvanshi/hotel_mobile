import 'package:flutter/material.dart';
import 'package:hotel_mobile/utils/image_path.dart';

class UserReviewsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text("User Reviews",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.refresh_outlined,color: Colors.black,),),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 800,
                    child:             ListView.builder(
                      itemCount: 3,
                        itemBuilder: (BuildContext context, int index){
                      return userReviewWidget();
                    }),
                  ),

                ],
              ),
            ),
          ),

          Container(
            height: 80,
            alignment: Alignment.center,
            color: Colors.white,

            child: Container(
              margin: EdgeInsets.only(top: 10,bottom: 10,left: 13,right: 13),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                boxShadow: [BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey.shade100
                )],
                borderRadius: BorderRadius.circular(30),

              ),
              child:Padding(padding: const EdgeInsets.only(left: 10,right: 10),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("ncddkcndjnfdj"),
                    Icon(Icons.send)

                  ],
                ),
              ),

            ),
          )
        ],
      ),
    );
  }

  /*user review list*/
  Widget userReviewWidget(){
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          blurRadius: 1,
          color: Colors.grey.shade100
        )]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //  crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage:NetworkImage(ImagePath.url2) ,
              ),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start
                ,
                children: const [
                  Text("Neha Aggarwal",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                  Text("nice",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w100,fontSize: 10),),
                ],
              )
            ],
          ),
          Text("01 august 22",style: TextStyle(fontSize: 12,color: Colors.grey),)
        ],
      ),
    );
  }
}