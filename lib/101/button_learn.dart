import 'package:flutter/material.dart';
class ButtonLearn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Color abbBackColor = Colors.amber;
    // TODO: implement build
    return Scaffold(
      backgroundColor: abbBackColor,
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if(states.contains(MaterialState.pressed)){
                  return Colors.green;
                }else{
                  Colors.white;
                }
              }),
            ),
            onPressed: (){},child: Icon (Icons.abc) ),
          TextButton(onPressed: (){}, child: Text('TextButton'),),
          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_outlined)),
          OutlinedButton(onPressed: (){}, child: Text('data')),
          FloatingActionButton(onPressed: (){})
        ],
      ),
      
    );
  }
}


