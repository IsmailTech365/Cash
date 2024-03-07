// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, file_names, prefer_collection_literals

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cash/Model/animated.dart';
import 'package:cash/screens/Map/map_home.dart';
import 'package:cash/screens/Time/Time.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      // appBar: AppBar(
      //   brightness: Brightness.light,
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: Text(
      //     "Dashboard",
      //     style: TextStyle(color: Colors.grey[800], fontSize: 20),
      //   ),
      // actions: [
      //   Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: CircleAvatar(
      //       backgroundImage: ExactAssetImage('assets/images/one.jpg'),
      //     ),
      //   )
      // ],
      //  ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Animation_Widget(
                  1,
                  Text(
                    "الخدمات",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Animation_Widget(
                          1,
                          Container(
                            width: 100,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Colors.blue,
                                  Colors.blue.withOpacity(.7)
                                ])),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Animation_Widget(
                                      1.2,
                                      Text(
                                        "خريطة توزع البائعين",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Animation_Widget(
                                      1.4,
                                      InkWell(
                                        onTap: () {
                                          Get.to(Map_Page());
                                        },
                                        child: Text(
                                          "اضغط هنا ..",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ))),
                  Expanded(
                    child: Animation_Widget(
                        1,
                        Container(
                          width: 100,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Colors.pink,
                                Colors.red.withOpacity(.7)
                              ])),
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Animation_Widget(
                                    1.2,
                                    Text(
                                      "تاريخ التسليم القادم",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Animation_Widget(
                                    1.4,
                                    InkWell(
                                      onTap: () {
                                        Get.to(Time());
                                      },
                                      child: Text(
                                        "اضغط هنا ..",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w100),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Animation_Widget(
                  1.4,
                  Text(
                    "اسماء البائعين",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
              SizedBox(
                height: 20,
              ),
              Animation_Widget(
                  1,
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Animation_Widget(
                              1,
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    // borderRadius: BorderRadius.circular(10),
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey))),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Animation_Widget(
                              1.2,
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    // borderRadius: BorderRadius.circular(10),
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey))),
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Animation_Widget(
                              1.4,
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    // borderRadius: BorderRadius.circular(10),
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey))),
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Animation_Widget(
                              1.6,
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    // borderRadius: BorderRadius.circular(10),
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey))),
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
