import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/model_learnview.dart';
import 'package:flutter_application_1/202/service/postmodel.dart';
import 'package:dio/dio.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  String? name;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com' ;
  bool _isLoading = false;
  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await Dio().post('https://jsonplaceholder.typicode.com/posts',data: postModel);
    if(response.statusCode==HttpStatus.created){
      name='basarili';
      print('islem sonlandi');
    }
    _changeLoading();
  }

  @override
  void initState() {
    super.initState();
    //_dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            _isLoading ? CircularProgressIndicator.adaptive() : SizedBox()
          ],
        ),
        body: Column(
          children: [
            TextField(
              textInputAction: TextInputAction.next,
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              textInputAction: TextInputAction.next,
              controller: _bodyController,
              decoration: InputDecoration(labelText: 'Body'),
            ),
            TextField(
              controller: _userIdController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'UserId',
              ),
            ),
            TextButton(
                child: Text("Send"),
                onPressed: (
                  _isLoading ? null:
                  () {
                  if (_titleController.text.isNotEmpty &&
                      _bodyController.text.isNotEmpty &&
                      _userIdController.text.isNotEmpty) {
                    final model = PostModel(
                        body: _bodyController.text,
                        title: _titleController.text,
                        userId: int.tryParse(_userIdController.text));

                        _addItemToService(model);
                  }
                }))
          ],
        ));
  }
}
