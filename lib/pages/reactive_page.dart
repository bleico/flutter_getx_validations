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
                Obx(() => Text("age ${_.myPet.age}")),
                ElevatedButton(
                  onPressed: () {
                    _.setPetAge(_.myPet.age + 1);
                  },
                  child: Text('set Age'),
                ),
              ],
            ),
            /* body: Obx(
                () => ListView(
                  children: _.mapItems.values
                      .map((e) => ListTile(
                            title: Text(e),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () => _.removeMapItem(e),
                            ),
                          ))
                      .toList(),
                ),
              ), */
            /* floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'add',
                  child: Icon(Icons.add),
                  onPressed: () {
                    _.mapItem();
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
            ), */
          );
        });
  }
}
