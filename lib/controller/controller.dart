// ignore_for_file: camel_case_types, unnecessary_overrides, prefer_const_constructors, dead_code, non_constant_identifier_names
import 'package:get/get.dart';

class Controller_home extends GetxController {
  RxBool isOpacityVisible = false.obs;
  void toggleOpacity() {
    isOpacityVisible.value = !isOpacityVisible.value;
  }

  RxDouble width = 100.0.obs;
  RxDouble height = 100.0.obs;
  RxDouble opacity = 0.0.obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 2), () {
      opacity.value = 1.0;
      width.value = 200.0;
      height.value = 200.0;
      update();
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
