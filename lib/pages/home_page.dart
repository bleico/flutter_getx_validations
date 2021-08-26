import 'package:flutter/material.dart';
import 'package:flutter_getx_validations/controllers/global_controller.dart';
import 'package:flutter_getx_validations/controllers/home_controller.dart';
import 'package:flutter_getx_validations/pages/home_page_widgets/home_list.dart';
import 'package:flutter_getx_validations/widgets/product_list.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  // final HomeController _controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                GetBuilder<GlobalController>(
                  id: 'favorites',
                  builder: (_) => ElevatedButton(
                    child: Text('Favoritos (${_.favorites.length})'),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            body: SafeArea(
              // child: HomeList(),
              child: ProductList(),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                _.increment();
              },
              child: Icon(Icons.add),
            ),
          );
        });
  }
}
