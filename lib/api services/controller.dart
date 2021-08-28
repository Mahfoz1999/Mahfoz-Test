
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController extends GetxController{
  var isLoading=true.obs;
  String? name;
  String? email;
  String? password;
  String? img;
  String? phone;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    load();
  }
  void load()async{
    isLoading(true);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email');
    name = prefs.getString('name');
    password = prefs.getString('password');
    img = prefs.getString('img');
    phone = prefs.getString('phone');
    isLoading(false);

  }
}