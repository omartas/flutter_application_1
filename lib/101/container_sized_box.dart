import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget{
  int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SizedBox(),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:index ,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.access_time_sharp),label:'a' ,),
        BottomNavigationBarItem(icon: Icon(Icons.access_time_sharp),label:'b')]
      ),
    );
  }

}