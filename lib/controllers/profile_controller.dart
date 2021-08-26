import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_validations/models/user.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class ProfileController extends GetxController {
  late User _user;
  User get user => _user;

  String _inputText = '';

  @override
  void onInit() {
    super.onInit();

    this._user = Get.arguments as User;
  }

  void onInputTextChanged(String text) {
    this._inputText = text;
  }

  void goToBackWithData() {
    if (this._inputText.trim().length > 0) {
      Get.back(result: this._inputText);
    } else {
      showCupertinoModalPopup(
        context: Get.overlayContext!,
        builder: (_) => CupertinoActionSheet(
          title: Text('Error'),
          message: Text('Ingrese un dato valido'),
          cancelButton: CupertinoActionSheetAction(
            child: Text("Aceptar"),
            onPressed: () => Get.back(),
          ),
        ),
      );
      /* Get.dialog(AlertDialog(
        title: Text('Error'),
        content: Text('Ingrese un valor valido'),
        actions: [
          ElevatedButton(
            child: Text('Aceptar'),
            onPressed: () {
              Get.back();
            },
          )
        ],
      )); */
    }
  }
}
