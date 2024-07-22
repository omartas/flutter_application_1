import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/column_row_learn.dart';
import 'package:flutter_application_1/101/custom_widget.dart';
import 'package:flutter_application_1/101/imagelearn.dart';
import 'package:flutter_application_1/101/stateful_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: PageView(
        controller: PageController(viewportFraction: 0.9),
        padEnds: false,

        children: [
          StatefulLearn(),
          StatefulLearn(),
          StatefulLearn()
        ],
      ),
    );
  }
}