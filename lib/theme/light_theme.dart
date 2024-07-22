import 'package:flutter/material.dart';

class LightTheme{
  ThemeData theme = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.green),
    textTheme: ThemeData.light().textTheme.copyWith(
      subtitle1: TextStyle(fontSize: 55,color: Colors.black)
    ),
  );
}