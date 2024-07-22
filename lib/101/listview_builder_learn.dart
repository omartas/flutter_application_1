
import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/imagelearn.dart';
import 'package:flutter_application_1/101/listview_learn.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewLearn(),));
      },
      ),
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text('$index');
      }),
    );
  }
}