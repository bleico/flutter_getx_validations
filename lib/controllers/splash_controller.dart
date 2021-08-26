import 'package:flutter_getx_validations/pages/home_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      /* Get.to(
        HomePage(),
        transition: Transition.zoom,
      ); */
      Get.off(
        HomePage(),
        transition: Transition.zoom,
      );
    });
  }

/*   @override
  void onClose() {
    print("same as dispose");
    super.onClose();
  } */
}
