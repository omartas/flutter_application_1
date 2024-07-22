import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  

GlobalKey <FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(children: [
          TextFormField(
            key: _key,
            validator: FormFieldValidator().isNotEmpty,
          ),
          ElevatedButton(onPressed: () {
            if(_key.currentState?.validate() ?? false ){
              print(_key.currentState);
              print('Okay');
            }
            else{
              print(_key.currentState);
              print(' not Okay');

            }
          }, child: Text('Save'))
        ],),
      ),
    );
  }
}


class FormFieldValidator{
  String? isNotEmpty(String? data){
    print(data);
    print(data);
    print(data);
    print(data);
    return (data?.isNotEmpty ?? false ) ? null :  'bos gecilemez';
  }
}