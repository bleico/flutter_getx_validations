import 'package:flutter/material.dart';
import 'package:flutter_getx_validations/controllers/global_controller.dart';
import 'package:flutter_getx_validations/pages/reactive_page.dart';
import 'package:flutter_getx_validations/pages/splash_%C3%A1ge.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ReactivePage(),
    );
  }
}
