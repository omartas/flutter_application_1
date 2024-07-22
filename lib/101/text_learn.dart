import 'package:flutter/material.dart';


class TextLearnView extends StatelessWidget{

  ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(body: Center (
      child: Text(
        keys.welcome,
        style: //ProjectStyles.welcomeStyle,
        Theme.of(context).textTheme.headline3, 
        ),
      ),);

  }

}

// kullanacağımız yazı stilini bu şekilde belirleyebiliriz .
//fakat en doğru yöntem Theme.of(context).textTheme kullanmaktır böylece app geneli bir stil elde ederiz.
class ProjectStyles{
  static TextStyle welcomeStyle = const TextStyle(
          fontSize: 55,
          wordSpacing: 2,
          letterSpacing: 2,
          fontWeight: FontWeight.w600,
          color: Colors.amber,
          decoration: TextDecoration.underline,

  );
}

class ProjectColors{
  static Color welcomeColor = Colors.red;
}

class ProjectKeys{
  final String welcome = 'Hosgeldiniz';
}