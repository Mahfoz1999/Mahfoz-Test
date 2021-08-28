import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/LogIn.dart';
import 'package:flutter_assignment/userProfile.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

Future<void> _firebasePushHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A by message just sowed up' + message.messageId.toString());
  AwesomeNotifications().createNotificationFromJsonData(message.data);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebasePushHandler);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true, badge: true, sound: true);
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelKey: 'key1',
      channelName: 'Test',
      channelDescription: 'TestDescription',
      defaultColor: Color(0xff9050dd),
      ledColor: Colors.white,
      importance: NotificationImportance.High,
      channelShowBadge: true,
      playSound: true,
      enableLights: true,
      enableVibration: true,
    )
  ]);
  AwesomeNotifications().actionStream.listen((event) {
    if (event.buttonKeyInput == 'close') SystemNavigator.pop();
  });
  SharedPreferences prefs = await SharedPreferences.getInstance();

  var email = prefs.getString('email');
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return GetMaterialApp(
      home: email == null ? LogIn() : UserProfile(),
    );
  }));
}
