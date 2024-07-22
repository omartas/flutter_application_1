import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: 
      CircularProgressIndicator(
      )
      ),
    );
  }
}

class CenterCircularProgres extends StatelessWidget {
  const CenterCircularProgres({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: Colors.red,),);
  }
}