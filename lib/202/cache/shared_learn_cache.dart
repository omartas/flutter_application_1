import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/cache/shared_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  int _currentValue = 0;
  late final SharedManager _manager ;

  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    _initilaze();
    
  }
  Future<void> _initilaze() async {
    _changeLoading();
    await _manager.init();  
    _changeLoading();
    getDefaultValues();
  }

  Future <void> getDefaultValues() async {
          _manager.getSring(SharedKeys.Key);
          _onChangeValue(_manager.getSring(SharedKeys.Key)??''); 
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
        //getDefaultValues(); 
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        _saveValueButton(),
        _deleteValueButton()

      ],),
      appBar: AppBar(
        actions: [
          isLoading ? Center(
              child: CircularProgressIndicator(
            color: Theme.of(context).backgroundColor,
          )
          ) : SizedBox.shrink()
        ],
        title: Text(_currentValue.toString()),
      ),
      body: TextField(onChanged: ((value) {
        _onChangeValue(value);
      })),
    );
  }

  _saveValueButton() {
    return FloatingActionButton(
      onPressed: () async {
        _changeLoading();
        await _manager.saveString(SharedKeys.Key,_currentValue.toString());
        _changeLoading();
      },
      child: Icon(Icons.save),
    );
  }
  _deleteValueButton(){
    return FloatingActionButton(onPressed: (() async {
      _changeLoading();
      await _manager.removeItem(SharedKeys.Key);
      _changeLoading();
    }),child: Icon(Icons.delete) ,);
  }
}

abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  // Burada yaptığımız <T> StatefulWidget Sınıf tanımlaması sayesinde bu sınıfı kullanacağımız
  // yere extend ederek değişkeleri ve fonksiyonları sınıf çağırmadankullanabiliriz
  // <T> Generictir.
  bool isLoading = false;

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
