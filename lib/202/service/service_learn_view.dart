import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/service/postmodel.dart';
import 'package:dio/dio.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {

  List<PostModel>? _items;
  bool _isLoading = false;


  void _changeLoading(){
    setState(() {
      _isLoading=!_isLoading;
    });
  }
  @override
  void initState() {
    super.initState();
    fetchItems();
  }

  Future<void> fetchItems() async {
    _changeLoading;
    final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');

    if(response.statusCode == HttpStatus.ok){
      final _datas = response.data;
      if(_datas is List){
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
        
      }
    }
    _changeLoading;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        _isLoading ? CircularProgressIndicator.adaptive():SizedBox()
      ],),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0,
        itemBuilder:((context, index) {
          return Card(
            child: ListTile(
              title: Text(_items?[index].title ?? ''),
              subtitle: Text(_items?[index].body ?? ''),
            ),
          );
        })
        
         ),
    );
  }
}