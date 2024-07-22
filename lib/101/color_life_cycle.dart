import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/color_demos_learn.dart';

class ColorLifeCycleViewState extends StatefulWidget {
  const ColorLifeCycleViewState({super.key});

  @override
  State<ColorLifeCycleViewState> createState() => _ColorLifeCycleViewStateState();
}

class _ColorLifeCycleViewStateState extends State<ColorLifeCycleViewState> {

  Color?  _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: (){
        _changeBackground(Colors.pink);
        print(_backgroundColor);
      }, icon: Icon(Icons.clear))],      
      ),

      body: Column(children: [
        Spacer(),
        Expanded(child: ColorDemos( initialColor: Colors.pink))
      ],),
    );
  }

  void _changeBackground(Color color) {
    setState(() {
      _backgroundColor=color;
    });
  }
}