import 'package:flutter/material.dart';
import 'package:flutter_application_1/303/generic_learn.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return _updateDiaolog();
              }
              );
        },
      ),
    );
  }
}

class _updateDiaolog extends StatelessWidget {
  const _updateDiaolog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Version Update!'),
      actions: [
        ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('update')),
        TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Close'),)
      ],
    );
  }
}
