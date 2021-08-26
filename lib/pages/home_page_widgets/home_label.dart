import 'package:flutter/material.dart';
import 'package:flutter_getx_validations/controllers/home_controller.dart';
import 'package:get/state_manager.dart';

class HomeLabel extends StatelessWidget {
  const HomeLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'text',
      builder: (_) => Text(_.counter.toString()),
    );
  }
}
