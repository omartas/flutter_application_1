import 'package:flutter/material.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {

  int _countValue =0;
  int _counterCustom =0;
  void incrementValue(){
    setState(() {
    _countValue +=1;
      
    });
    print(_countValue);
  }
  void deIncrementValue(){
    setState(() {
    _countValue-=1;
      
    });
    print(_countValue);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(

        child: Text(
        
        _countValue.toString(),style: Theme.of(context).textTheme.headline2)),
      floatingActionButton: Row(  
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(onPressed: (){
            setState(() {
              _counterCustom++;
            });
          }, child: Text('Merhaba $_counterCustom')),
          incrementButton(),
          deIncrementButton(),
        ],
      ),
    );
  }

  FloatingActionButton deIncrementButton() => FloatingActionButton(onPressed: deIncrementValue ,child: Icon(Icons.paragliding),);

  FloatingActionButton incrementButton() => FloatingActionButton(onPressed: incrementValue ,child: Icon(Icons.add),);
}