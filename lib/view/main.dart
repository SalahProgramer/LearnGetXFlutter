import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Services/ServicesSttings.dart';
import 'package:getx/middeware/Super_middleware.dart';
import 'package:getx/middeware/auth_middleware.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/binding.dart';
import 'Home.dart';
import 'Login.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    home: Home(),
    initialBinding: Binding(),
    getPages: [
      // GetPage(name: '/', page:() => Login(),middlewares: [
      //   AuthMiddleWare(),SuperMiddleWare()
      // ]),

      GetPage(name: '/home', page:() => Home())
    ],
  ));
}
Future initServices() async{

  await Get.putAsync(() => SettingServices().init());
}


