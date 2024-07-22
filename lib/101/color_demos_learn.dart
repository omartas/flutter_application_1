import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
Color? _backgroundColor = Colors.transparent;
@override
  void initState() {
    super.initState();
    _backgroundColor=widget.initialColor;
    print(_backgroundColor);
  }

void changeBackgroundColor(Color color){
  setState(() {
    _backgroundColor=color;
  });
}
@override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(_backgroundColor!= widget.initialColor){
      changeBackgroundColor(widget.initialColor);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: 
      BottomNavigationBar(
      onTap: (value){
        if(value == _MyColors.red.index){
          changeBackgroundColor(Colors.red);
        }else if(value==_MyColors.amber.index){
          changeBackgroundColor(Colors.amber);
        }else if(value == _MyColors.white.index){
          changeBackgroundColor(Colors.white);
        }
      },
      items: [
      BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red),label:'red'),
      BottomNavigationBarItem(icon: _ColorContainer(color: Colors.amber,),label: 'amber'),
      BottomNavigationBarItem(icon: _ColorContainer(color: Colors.white),label: 'white') 
    ],)
    
    );
  }
}
enum _MyColors{red,amber,white}
class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key, required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(width: 10,height: 10,color: color,);
  }
}