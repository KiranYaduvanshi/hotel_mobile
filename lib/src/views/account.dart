import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_icons.dart';
import '../controller/account_controller.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AccountController accountController = Get.find();
    return Scaffold(
      backgroundColor: AppColors.scafoldBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'profile'.tr,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {},
              child: AppIcons.notification(),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.green,
                child: Text(
                  "S",
                  style: TextStyle(color: Colors.white, fontSize: 60),
                ),
              ),
            ),
            const Center(
                child: Text(
              "Shubhpreet Rana",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )),
            const SizedBox(
              height: 20,
            ),

            /*=====Logged In======*/
            loggedIn(),
            const Divider(),

            /*-----Login-----*/
            accountoption(
                title: "login", icon: AppIcons.accountIcon(), function: () {}),

            /*-----GeneralSettings----*/
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              child: Text("generalSetting".tr,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            ),

            /*-----Get Notifications-----*/
            getNotification(),
            const Divider(),

            /*-----Language-----*/
            accountoption(
                title: "language".tr,
                icon: AppIcons.accountIcon(),
                function: () {}),
            const Divider(),

            /*-----Contact Us-----*/
            accountoption(
                title: "contactUs".tr,
                icon: AppIcons.accountIcon(),
                function: ()
                  async {
                    final Uri emailLaunchUri = Uri(
                    scheme: 'mailto',
                    path: 'smith@example.com',
                    query: encodeQueryParameters(<String, String>{
                    'subject': 'Example Subject & Symbols are allowed!',
                    }),
                    );
                    launchUrl(emailLaunchUri);
                  }
            ),
            const Divider(),

            /*-----Rate our app-----*/
            accountoption(
                title: "rateApp".tr,
                icon: AppIcons.accountIcon(),
                function: () {}),
            const Divider(),

            /*-----Privacy-----*/
            accountoption(
                title: "privacy".tr,
                icon: AppIcons.accountIcon(),
                function: () {}),
            const Divider(),

            /*-----About-----*/
            accountoption(
                title: "about".tr,
                icon: AppIcons.accountIcon(),
                function: () {}),
            const Divider(),

            /*-----Facebook-----*/
            accountoption(
                title: "facebook".tr,
                icon: AppIcons.accountIcon(),
                function: () {}),
            const Divider(),

            /*-----Youtube-----*/
            accountoption(
                title: "youtube".tr,
                icon: AppIcons.accountIcon(),
                function: () {}),
            const Divider(),

            /*-----Purchase-----*/
            accountoption(
                title: "purchase".tr,
                icon: AppIcons.accountIcon(),
                function: () {}),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  //Account Options====>
  Widget accountoption(
      {required String title,
      required Widget icon,
      required Function() function}) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 33,
                  width: 33,
                  child: icon,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            AppIcons.rightArrow(),
          ],
        ),
      ),
    );
  }
//<====Account Options

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
//Get Notifications====>
  Widget getNotification(){
    AccountController accountController = Get.find();
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 33,
                width: 33,
                child: AppIcons.accountIcon(),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
              ),
            const  Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  "Get Notifications",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
         Obx(()=> Switch(value: accountController.switcNotifications.value, onChanged: (value){ accountController.switcNotifications.value = value; }))
        ],
      ),
    );
  }
//<====Get Notifications


//=======>Email Dialog
  void showNoMailAppsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Open Mail App"),
          content: Text("No mail apps installed"),
          actions: <Widget>[
            FlatButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }
//=======>Email Dialog


//Logged In Widget=========>
Widget loggedIn (){
    return Column(
      children: [

        /*-----Email-----*/
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 33,
                    width: 33,
                    child: AppIcons.accountIcon(),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                 const  Padding(
                    padding:  EdgeInsets.only(left: 30.0),
                    child: Text(
                      "test@gmail.com",
                      style:  TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
        ),
        const Divider(),

        /*-----Date-----*/
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 33,
                width: 33,
                child: AppIcons.accountIcon(),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
              ),
              const  Padding(
                padding:  EdgeInsets.only(left: 30.0),
                child: Text(
                  "28-07-2022",
                  style:  TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        const Divider(),

        /*-----Edit Profile-----*/
        accountoption(
            title: "editProfile".tr,
            icon: AppIcons.accountIcon(),
            function: () {}),
        const Divider(),

        /*-----Logout-----*/
        accountoption(
            title: "logout", icon: AppIcons.accountIcon(), function: () {}),
      ],
    );
}
//<=========Logged In Widget
}
