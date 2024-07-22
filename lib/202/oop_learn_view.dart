import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/oop_learn.dart';

class OopLearnView extends StatefulWidget {
  const OopLearnView({super.key});

  @override
  State<OopLearnView> createState() => _OopLearnViewState();
}

class _OopLearnViewState extends State<OopLearnView> {
  FileDownload? download;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    download = FileDownload();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircularProgressIndicator(color: Colors.white ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        download?.downloadItem(null);
      },),
    );
  }
}