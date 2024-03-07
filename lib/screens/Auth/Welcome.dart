// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:cash/screens/Auth/Login_screen.dart';

class Welcome extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: '',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'image/55.png',
    ),
    Introduction(
      title: 'Delivery',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'image/55.png',
    ),
    Introduction(
      title: 'Receive Money',
      subTitle: 'Pick up delivery at your door and enjoy groceries',
      imageUrl: 'image/55.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      backgroudColor: Colors.white,
      foregroundColor: Color.fromARGB(255, 0, 138, 215),
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}
