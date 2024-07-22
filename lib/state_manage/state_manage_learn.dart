import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_manage/state_learn_view_model.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModel{
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: isopacity?Colors.red : Colors.green,
        shadowColor: isVisible?Colors.amber: Colors.grey,
      ),
    );
  }
}