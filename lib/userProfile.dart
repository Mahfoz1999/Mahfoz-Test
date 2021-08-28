
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/api%20services/controller.dart';
import 'package:flutter_assignment/api%20services/utility.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class UserProfile extends StatefulWidget {

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  final UserController userController=Get.put(UserController());




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body:Obx( ()=> userController.isLoading.value?Center(child: CircularProgressIndicator(),):Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 20.h,
            color: Color(0xff36506b),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 3.h),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: MemoryImage(Utility.dataFromBase64String(userController.img!)),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Text(
                  userController.name!,
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 1.h),
                  child: Text(
                    'email:',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                Text(
                  userController.email!,
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 1.h),
                  child: Text(
                    'Phone:',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                Text(userController.phone!,
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: () async {
                    normalNotify();
                  },
                  child: Text('Hello'),
                ),
                RaisedButton(
                  onPressed: () async {
                    notify();
                  },
                  child: Text('Bye'),
                ),
              ],
            ),
          )
        ],
      ),)
    );
  }

  void notify() async {
    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: 0,
          channelKey: 'key1',
          title: 'Good Bye my friend',
          body: 'Sure you want to exit the app?',
        ),
        actionButtons: [
          NotificationActionButton(
              key: 'close',
              label: 'Yes',
              buttonType: ActionButtonType.DisabledAction,
              enabled: true,
              autoCancel: true),
          NotificationActionButton(
              key: 'nothing',
              label: 'No',
              buttonType: ActionButtonType.DisabledAction,
              enabled: true),
        ]);
  }

  void normalNotify() async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 1,
        channelKey: 'key2',
        title: 'Hello',
        body: 'How are you my friend',
      ),
    );
  }
}
