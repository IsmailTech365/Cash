// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cash/local/local_controller.dart';
import 'package:cash/main.dart';
import 'package:cash/screens/Time/Time.dart';
import '../Map/map_home.dart';

class Services_page extends StatelessWidget {
  Services_page({super.key});
  Mylocalcontrollar controller = Get.put(Mylocalcontrollar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(249, 0, 138, 215),
        title: Text('Services'.tr),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              shardpref!.getString('lang') == 'ar'
                  ? controller.changelang('en')
                  : controller.changelang('ar');
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(248, 255, 255, 255),
          Color.fromARGB(255, 255, 255, 255),
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(Time());
                },
                child: Text('Time')),
            ElevatedButton(
                onPressed: () {
                  Get.to(Map_Page());
                },
                child: Text('Map')),
          ],
        ),
      ),
    );
  }
}
