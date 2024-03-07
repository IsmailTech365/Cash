// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cash/local/local.dart';
import 'package:cash/local/local_controller.dart';
import 'package:cash/screens/Auth/Login_screen.dart';
import 'package:cash/screens/Auth/Welcome.dart';
import 'package:cash/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? shardpref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  shardpref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Mylocalcontrollar controller = Get.put(Mylocalcontrollar());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: controller.initialang,
      translations: Mylocal(),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/Welcome', page: () => Welcome()),
      ],
    );
  }
}
