import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(ImageItems.schoolImg, errorBuilder: ((context, error, stackTrace) => Icon(Icons.abc_outlined))),
        ],
      ),
    );
  }
}

class ImageItems{
  static String schoolImg = 'school.png';
}