import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 15,),
          OzelTextField(icon: Icon(Icons.mail),labelText: 'Mail'),          
          OzelTextField(icon: Icon(Icons.password),labelText: 'sifre',),
        ],
      ),
    );
  }
}

class OzelTextField extends StatelessWidget {
    final String labelText;
    final Icon icon;

  const OzelTextField({
    Key? key, required this.labelText, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 15),
      maxLength: 20,
      buildCounter: ((context, {required currentLength, required isFocused, maxLength}) {
        return Container( );
      } ),
      decoration: InputDecoration(
        
        prefix: icon,
        border: OutlineInputBorder(),
        labelText: labelText,
        
      ),
    );
  }
}