import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PackegeLearn extends StatefulWidget {
  const PackegeLearn({super.key});

  @override
  State<PackegeLearn> createState() => _PackegeLearnState();
}

class _PackegeLearnState extends State<PackegeLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SpinKitDancingSquare(color: Colors.white,),
    );
  }
}