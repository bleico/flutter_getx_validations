import 'dart:async';

import 'package:faker/faker.dart';
import 'package:get/state_manager.dart';

class SocketClientController extends GetxController {
  RxString _message = "".obs;
  RxInt _counter = 0.obs;
  RxString get message => _message;

  late Timer _timer, _timerCounter;

  final _faker = Faker();

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  _init() {
    // Usando el worker ever
    ever(
      _counter,
      (_) {
        print("_counter ha sido cambiado ${_counter.value}");
      },
    );

    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _message.value = _faker.lorem.sentence();
    });

    _timerCounter = Timer.periodic(Duration(seconds: 1), (timer) {
      _counter.value++;
    });
  }

  @override
  void onClose() {
    if (_timer != null) {
      _timer.cancel();
    }
    if (_timerCounter != null) {
      _timerCounter.cancel();
    }
    super.onClose();
  }
}
