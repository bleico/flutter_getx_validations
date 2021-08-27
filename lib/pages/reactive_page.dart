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
              body: Obx(
                () => ListView.builder(
                    itemCount: _.items.length,
                    itemBuilder: (__, index) {
                      final String text = _.items[index];
                      return ListTile(
                        title: Text(text),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            _.removeItem(index);
                          },
                        ),
                      );
                    }),
              ),
              floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    heroTag: 'add',
                    child: Icon(Icons.add),
                    onPressed: () {
                      _.addItem();
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
