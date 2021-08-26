import 'package:flutter/material.dart';
import 'package:flutter_getx_validations/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      dispose: (_) {
        print("normal dispose");
      },
      init: SplashController(),
      builder: (_) => Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
