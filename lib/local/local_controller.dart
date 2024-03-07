// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cash/main.dart';

class Mylocalcontrollar extends GetxController {
  Locale? initialang = shardpref!.getString('lang') == null
      ? Get.deviceLocale
      : Locale(shardpref!.getString('lang')!);

  void changelang(String codelang) {
    Locale local = Locale(codelang);
    shardpref!.setString('lang', codelang);
    Get.updateLocale(local);
  }
}
