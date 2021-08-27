import 'package:flutter_getx_validations/models/pet.dart';
import 'package:get/get.dart';

class ReactivaController extends GetxController {
  RxInt counter = 0.obs;
  RxString currentDate = ''.obs;
  RxList<String> items = [''].obs;
  RxMap<String, dynamic> mapItems = Map<String, dynamic>().obs;

  Pet myPet = Pet(name: "Bumer", age: 1);

  void increment() {
    counter.value++;
  }

  void getDate() {
    currentDate.value = DateTime.now().toString();
  }

  void addItem() {
    items.add(DateTime.now().toString());
  }

  void mapItem() {
    final String key = DateTime.now().toString();
    mapItems['$key'] = key;
  }

  void removeItem(int index) {
    items.removeAt(index);
  }

  void removeMapItem(String key) {
    mapItems.remove(key);
  }

  void setPetAge(int age) {
    myPet.age = age;
    // myPet.value = myPet.value.copyWith(age: age);
  }
}
