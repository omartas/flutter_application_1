import 'package:flutter/material.dart';

class CallbackLearn extends StatefulWidget {
  const CallbackLearn({super.key});

  @override
  State<CallbackLearn> createState() => _CallbackLearnState();
}

class _CallbackLearnState extends State<CallbackLearn> {
  CallbackUser? _user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column( children: [
        DropdownButton<CallbackUser>(
          items: CallbackUser.dummyUser().map((e) {
          return DropdownMenuItem(child: Text(e.name),value: e,);
        }).toList(),
        
         onChanged: (CallbackUser? callbackUser ){setState(() {
           _user = callbackUser;
         });})
      ]),
    );
  }
}



class CallbackUser{
  final String name;
  final int id;

  CallbackUser(this.name, this.id);
  
  // TODO: dummy remove it
  static List <CallbackUser> dummyUser(){
    return [
      CallbackUser('oft',123),
      CallbackUser('oft2',124),
    ];
  }
}
