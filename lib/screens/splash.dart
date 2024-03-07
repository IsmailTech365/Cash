// ignore_for_file: prefer_const_constructors, annotate_overrides, unused_local_variable, must_be_immutable, override_on_non_overriding_member, dead_code, unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cash/controller/controller.dart';
import 'package:cash/screens/Auth/Welcome.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Controller_home myController = Get.put(Controller_home());
    Timer(Duration(seconds: 5), () {
      Get.offAll(Welcome());
    });
    return Scaffold(
      body: Center(
        child: Obx(
          () => AnimatedContainer(
            duration: Duration(seconds: 2),
            width: myController.width.value,
            height: myController.height.value,
            child: AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: myController.opacity.value,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain, image: AssetImage('image/1.png'))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
