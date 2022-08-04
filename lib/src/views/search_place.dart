import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_mobile/utils/dimen.dart';

class SearchPlace extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Dimens().init();
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          /*header search widget*/

            headerWidget(),

            Container(
              margin: EdgeInsets.all( 10),
              child: const Visibility(
                visible: false,
                  child: Text("We have found",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),)),
            ),
            Visibility(
              visible: false,
              child: Expanded(
                child: Container(
                  height: Get.height *.7,
                  child: ListView.builder(
                    itemCount: 5,
                      itemBuilder: (BuildContext context, int index){
                    return searchPlacesWidget();
                  }),
                ),
              ),
            ),

             Container(
               margin: const EdgeInsets.all( 10),

               child:  Visibility(
                  visible: true,
                  child: Text("Recent Search(s)",style: TextStyle(fontSize: Dimens.fontMedium,fontWeight: FontWeight.w600,color: Colors.black),)),
             ),

            Visibility(
              visible: true,

              child: Expanded(
                child: Container(
                  height: Get.height *.7,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index){
                        return recentSearch();
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

  /* header Widget*/

  Widget headerWidget(){
    return  Container(
      width: Get.width *1,
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children:  [
          Container(
             width: Get.width *.8,
            child: Row(
              children: [
                Container(
                  //width: Get.width *.1,
                  margin: EdgeInsets.only(left: 2),

                  child: const BackButton(
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  width: Get.width *.5,
                  child: const TextField(
                    textInputAction: TextInputAction.newline,
                    keyboardType: TextInputType.multiline,
                    maxLines: 10,
                    minLines: 1,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search & Explore Places "),
                  ),
                ),
              ],
            ),
          ),

          Container(
              width: Get.width *.1,

              child: Icon(Icons.clear_outlined,color: Colors.black,))
        ],
      ),
    );
  }

  /** Searched List **/
  Widget searchPlacesWidget(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        width: Get.width*1,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 120,
                width: Get.width *1-36,

                // margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    SizedBox(
                      height: 120,
                      width: 120,

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(

                          padding: const EdgeInsets.only(top: 10.0,right: 8.0),
                          child: Text("Patenga Sea Beach",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0,top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.location_on_outlined,color: Colors.grey,
                                size: 16,
                              ),
                              Text("Patenga,Chittagong",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, ),
                          child: Container(
                            height: 2,
                            width: 120,
                            color: Colors.blueAccent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0,bottom: 5,top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,

                            children: [
                              Row(
                                children: [
                                  Icon(Icons.favorite_border_outlined,color: Colors.orangeAccent,size: 16,),
                                  Text("53",style: TextStyle(color: Colors.grey,fontSize: 13),)
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.message_outlined,color: Colors.grey,size: 16,),
                                  Text("14",style: TextStyle(color: Colors.grey,fontSize: 13),)

                                ],
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                left: 0,top: 0 ,
                child:Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    //color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          // image:NetworkImage(imageUrl)
                          image:NetworkImage(
                              "https://images.pexels.com/photos/949587/pexels-photo-949587.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                          )

                      )
                  ),
                )
            )

          ],
        ),
      ),
    );
  }

  /* Recent Search */
  Widget recentSearch(){
    return Container(
      width: Get.width *1 ,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.access_time_filled_outlined,),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text("Sea Beach",style: TextStyle(fontSize: Dimens.fontSmall),)
                ,
              )
            ],

          ),
          Icon(Icons.close_rounded,color: Colors.grey,)
        ],
      ),
    );
  }

}