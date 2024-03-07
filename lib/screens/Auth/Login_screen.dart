// // ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cash/Model/TextField.dart';
import 'package:cash/Model/animated.dart';
import 'package:cash/screens/App_Screen/services.dart';
import 'package:cash/screens/Auth/ScanBarcode.dart';

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 0, 138, 215),

      body: Center(
        child: Animation_Widget(
          2.5,
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width - 10,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Animation_Widget(
                              1,
                              Text(
                                'Log In'.tr,
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Animation_Widget(
                              1.2,
                              Text(
                                'Login to your account'.tr,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[700]),
                              )),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            Animation_Widget(
                                1.3,
                                MyTextFieldForm(
                                    label: 'PIN'.tr, obscureText: true)),
                          ],
                        ),
                      ),
                      Animation_Widget(
                        1.4,
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Container(
                            padding: EdgeInsets.only(top: 3, left: 3),
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                )),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 40,
                              onPressed: () {
                                Get.to(Services_page());
                              },
                              color: Color.fromARGB(249, 0, 138, 215),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                'Log In'.tr,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 5),
                      Text('___ OR ___'),
                      SizedBox(height: 5),
                      Animation_Widget(
                        1.4,
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Container(
                            padding: EdgeInsets.only(top: 3, left: 3),
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                )),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 40,
                              onPressed: () {
                                Get.to(Scaneer());
                              },
                              color: Color.fromARGB(249, 0, 138, 215),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                'Barcode Log In'.tr,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Animation_Widget(
                      //   1.5,
                      //   Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text('Dont have an account?'.tr),
                      //       SizedBox(width: 5),
                      //       Text(
                      //         'Sign Up'.tr,
                      //         style: TextStyle(
                      //             color: Color.fromARGB(249, 0, 138, 215),
                      //             fontWeight: FontWeight.w600,
                      //             fontSize: 18),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: unused_field, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, avoid_print, sort_child_properties_last, unnecessary_string_interpolations, depend_on_referenced_packages, unused_element

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:project1/screens/Auth/scan.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final qrkey = GlobalKey<FormState>();
//   QRViewController? controller;
//   String _username = '';
//   String _password = '';
//   String result = '';
//   @override
//   dispose() {
//     controller?.dispose();
//     super.dispose();
//   }

//   void _onQRViewCreated(QRViewController controller) {
//     this.controller = controller;
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         result = scanData.code!;
//       });
//     });
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('تسجيل الدخول'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: qrkey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'اسم المستخدم',
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'يجب إدخال اسم المستخدم';
//                   }
//                   return null;
//                 },
//                 onChanged: (value) {
//                   setState(() {
//                     _username = value;
//                   });
//                 },
//               ),
//               TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'كلمة المرور',
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'يجب إدخال كلمة المرور';
//                   }
//                   return null;
//                 },
//                 onChanged: (value) {
//                   setState(() {
//                     _password = value;
//                   });
//                 },
//               ),
//               ElevatedButton(
//                 child: Text('تسجيل الدخول'),
//                 onPressed: () {
//                   if (qrkey.currentState!.validate()) {
//                     // Perform login operation
//                     print('Logged in successfully!');
//                   }
//                 },
//               ),
//               ElevatedButton(
//                 child: Text('مسح الباركود'),
//                 onPressed: () {
//                   Get.to(Scaneer());
//                 },
//               ),
//               Text('$_username'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
