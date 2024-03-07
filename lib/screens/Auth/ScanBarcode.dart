// ignore_for_file: unused_field, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, avoid_print, sort_child_properties_last, unnecessary_string_interpolations, depend_on_referenced_packages, unused_element, no_leading_underscores_for_local_identifiers, unrelated_type_equality_checks, file_names

import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:qr_code_scanner/qr_code_scanner.dart';

class Scaneer extends StatefulWidget {
  @override
  _ScaneerState createState() => _ScaneerState();
}

class _ScaneerState extends State<Scaneer> {
  final qrkey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  // String result = '';
  Barcode? barcode;

  @override
  dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: [
              buildQrview(context),
              Positioned(top: 10, child: buildcontrolButtons()),
            ],
          ),
        ),
      );

  void _onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((barcode) {
      setState(() {
        this.barcode = barcode;
      });
      if (barcode.code == 'ismail') {
        Get.to(Service()); // الصفحة المراد الانتقال اليها بعد عملية التحقق
        controller.pauseCamera();
      } else {
        Get.snackbar(
          '',
          '',
          titleText: Text(
            '${barcode.code}',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.transparent,
          dismissDirection: DismissDirection.down,
          duration: Duration(seconds: 2),
        );
        controller.stopCamera();
        controller.resumeCamera();
      }
    });
  }

  Widget buildQrview(BuildContext context) => QRView(
        key: qrkey,
        onQRViewCreated: _onQRViewCreated,
        overlay: QrScannerOverlayShape(
            overlayColor: Colors.black,
            borderWidth: 10,
            borderLength: 20,
            borderRadius: 10,
            borderColor: Theme.of(context).cardColor,
            cutOutSize: MediaQuery.of(context).size.width * 0.8),
      );

  Widget buildcontrolButtons() => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async {
                await controller!.toggleFlash();
                setState(() {});
              },
              icon: FutureBuilder<bool?>(
                future: controller?.getFlashStatus(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return Icon(
                        snapshot.data! ? Icons.flash_on : Icons.flash_off);
                  } else {
                    return Container();
                  }
                },
              ),
            ),
            IconButton(
              onPressed: () async {
                await controller!.flipCamera();
                setState(() {});
              },
              icon: FutureBuilder(
                future: controller?.getCameraInfo(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return Icon(Icons.switch_camera);
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      );
}
