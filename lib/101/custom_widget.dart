import 'package:flutter/material.dart';

class CustomidgetLearn extends StatelessWidget{
  const CustomidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Center(
          child: CustomFoodButton(title: 'Doner'),
        ),
    );
  }
}

class _ColorsUtility{
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility{
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget  with _ColorsUtility,_PaddingUtility {
  CustomFoodButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(onPressed: (() {}),
          style: ElevatedButton.styleFrom(primary: redColor,shape: StadiumBorder()),
          child: Padding(
            padding: normalPadding,
            child: Text(title,style: Theme.of(context).textTheme.headline6?.copyWith(color: whiteColor),),
          ),
          
          );
  }
}