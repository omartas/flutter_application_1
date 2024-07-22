import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_manage/state_manage_learn.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView>{
  @override
   void initState() {
    // TODO: implement initState
    super.initState();

  }

  bool isVisible = false;
  bool isopacity = false;

  late AnimationController controller;
  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isopacity = !isopacity;
    });
  }
}