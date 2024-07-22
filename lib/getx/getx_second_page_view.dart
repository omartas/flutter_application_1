import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_controller.dart';

class GetxSecondLearnView extends StatefulWidget {
  const GetxSecondLearnView({super.key});

  @override
  State<GetxSecondLearnView> createState() => _GetxSecondLearnViewState();
}

class _GetxSecondLearnViewState extends State<GetxSecondLearnView> {
  final mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            // Obx içine child almaz. Get sayesinde setstate yapmadan parent ına aldığımız widget i yeniden çizdirir.
            Obx( ()=>Text(mainController.counter.value.toString())),
            ElevatedButton(
              onPressed: () {
                mainController.incrementCounter();
                print(mainController.counter);
              },
              child: Text('arttir'),
            ),
          ],
        ),
      ),
    );
  }
}
