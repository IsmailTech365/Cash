// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:cash/Model/animated.dart';
import 'package:cash/screens/Time/Dashbord.dart';
import 'package:page_transition/page_transition.dart';

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> with TickerProviderStateMixin {
  late PageController _pageController;

  late AnimationController rippleController;
  late AnimationController scaleController;

  late Animation<double> rippleAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);

    rippleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    scaleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: Dashboard()));
            }
          });

    rippleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(rippleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              rippleController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              rippleController.forward();
            }
          });

    scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(scaleController);

    rippleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(),
        ],
      ),
    );
  }

  Widget makePage() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.black.withOpacity(.3),
        Colors.black.withOpacity(.3),
      ])),
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Animation_Widget(
                1,
                Text(
                  'اسماعيل السماعيل',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Animation_Widget(
                    1,
                    Text(
                      "عدد مرات الاستلام:",
                      style: TextStyle(
                          color: Colors.yellow[400],
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )),
                Animation_Widget(
                    1.2,
                    Text(
                      "15",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Animation_Widget(
                    1,
                    Text(
                      "مكان الاستلام:",
                      style: TextStyle(
                          color: Colors.yellow[400],
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )),
                Animation_Widget(
                    1.2,
                    Text(
                      "ادلب",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Animation_Widget(
                1,
                Align(
                  child: Text(
                    "لمعرفة موقع تصريف البطاقة وتاريخ الاستلام اضغط هنا ..",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w100),
                  ),
                )),
            SizedBox(height: 30),
            Animation_Widget(
                1,
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedBuilder(
                    animation: rippleAnimation,
                    builder: (context, child) => Container(
                      width: rippleAnimation.value,
                      height: rippleAnimation.value,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.4)),
                        child: InkWell(
                          onTap: () {
                            scaleController.forward();
                          },
                          child: AnimatedBuilder(
                            animation: scaleAnimation,
                            builder: (context, child) => Transform.scale(
                              scale: scaleAnimation.value,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
