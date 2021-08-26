import 'package:flutter/material.dart';
import 'package:flutter_getx_validations/controllers/home_controller.dart';
import 'package:flutter_getx_validations/models/user.dart';
import 'package:get/get.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'users',
        builder: (_) {
          if (_.loading) {
            return Center(child: LinearProgressIndicator());
          }
          return ListView.builder(
              itemCount: _.users.length,
              itemBuilder: (context, index) {
                final User user = _.users[index];
                return ListTile(
                  title: Text(user.firstName),
                  subtitle: Text(user.email),
                  onTap: () => _.showUserProfile(user),
                );
              });
        });
  }
}
