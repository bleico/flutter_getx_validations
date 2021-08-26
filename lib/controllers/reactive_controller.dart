import 'dart:async';

import 'package:get/get.dart';

class ReactivaController extends GetxController {
  RxInt counter = 0.obs;
  RxString currentDate = ''.obs;

  void increment() {
    counter.value++;
  }

  void getDate() {
    currentDate.value = DateTime.now().toString();
  }
}
