import 'package:flutter/material.dart';
import 'package:flutter_application_1/getx/getx_controller.dart';
import 'package:get/get.dart';

import 'getx_second_page_view.dart';

class GetxLearnView extends StatefulWidget {
  const GetxLearnView({super.key});

  @override
  State<GetxLearnView> createState() => _GetxLearnViewState();
}

class _GetxLearnViewState extends State<GetxLearnView> {

  final mainController = Get.put(MainController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(GetxSecondLearnView());
      },
      ),
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          Obx(()=>Text(mainController.counter.value.toString())),
          ElevatedButton(onPressed: (){
            mainController.incrementCounter();
          }, child: Text('arttir'),),

        ],),
      ),
    );
  }
}