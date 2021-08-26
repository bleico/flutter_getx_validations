import 'package:flutter/material.dart';
import 'package:flutter_getx_validations/controllers/reactive_controller.dart';
import 'package:get/get.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactivaController>(
        init: ReactivaController(),
        builder: (_) {
          return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() {
                    print(" 😎reactive");
                    return Text(
                      _.counter.value.toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  }),
                  Obx(() {
                    print(" 😆reactive");
                    return Text(
                      _.currentDate.value.toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  }),
                ],
              ),
              floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    heroTag: 'add',
                    child: Icon(Icons.add),
                    onPressed: () {
                      _.increment();
                    },
                  ),
                  FloatingActionButton(
                    heroTag: 'date',
                    child: Icon(Icons.calendar_today),
                    onPressed: () {
                      _.getDate();
                    },
                  ),
                ],
              ));
        });
  }
}
