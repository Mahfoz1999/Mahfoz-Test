
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_assignment/LogIn.dart';
import 'package:flutter_assignment/api%20services/utility.dart';
import 'package:flutter_assignment/userProfile.dart';
import 'package:get/get.dart' as prefix;
import 'package:shared_preferences/shared_preferences.dart';

class Services {

  static late String _base64;

  static Future<void> signUp(
      {String? name,
      String? password,
      String? email,
      String? phone,
      File? img}) async {

    var formData = FormData.fromMap({
      'name': name,
      'password': password,
      'email': email,
      'phone': phone,
      'userImg': await MultipartFile.fromFile(img!.path, filename: img.path),
      'FCM_token': 'asffdfdffafsafsa'
    });
    var response = await Dio().post(
        'https://flutter--task.herokuapp.com/auth/signUp',
        data: formData);
    if (response.statusCode == 201) {
      _base64 = Utility.base64String(img.readAsBytesSync());
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('name', name!);
      prefs.setString('email', email!);
      prefs.setString('phone', phone!);
      prefs.setString('password', password!);
      prefs.setString('img', _base64);
      print('user created');
      prefix.Get.snackbar('Info', 'user is created');
      prefix.Get.offAll(LogIn());
    } else if (response.statusCode == 400)
      prefix.Get.snackbar('Info', 'validation error');
    else if (response.statusCode == 500)
      prefix.Get.snackbar('Info', 'connection error');
    else if (response.statusCode == 404)
      prefix.Get.snackbar('Info', '404 not found');
  }

  static Future<void> logIn(String email, String password) async {
    try {
      var response = await Dio().post(
          'https://flutter--task.herokuapp.com/auth/login',
          data: {
            'email': email,
            'password': password,
            'FCM_token': 'asffdfdffafsafsa'
          },
          options: Options(
            contentType: Headers.jsonContentType,
          ));
      if (response.statusCode == 200) prefix.Get.offAll(UserProfile());
    } on DioError catch (e) {
      prefix.Get.snackbar('Info', 'user not found');
    }
  }
}
