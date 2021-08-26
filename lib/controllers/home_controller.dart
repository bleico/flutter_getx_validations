import 'package:flutter_getx_validations/api/user_api.dart';
import 'package:flutter_getx_validations/models/user.dart';
import 'package:flutter_getx_validations/pages/profile_page.dart';
import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<User> _users = [];
  bool _loading = true;

  int get counter => _counter;
  List<User> get users => _users;
  bool get loading => _loading;

  @override
  void onInit() {
    super.onInit();
    print("Same as initState");
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady");
    this.loadUser();
  }

  Future<void> loadUser() async {
    final data = await UserAPI.instance.getUsers(1);
    this._users = data!;
    this._loading = false;
    update(['users']);
  }

  void increment() {
    this._counter++;
    update(['text'], _counter >= 10);
  }

  Future<void> showUserProfile(User user) async {
    final result = await Get.to<String>(
      ProfilePage(),
      arguments: user,
    );
    if (result != null) {
      print("😢 result $result");
    }
  }
}
