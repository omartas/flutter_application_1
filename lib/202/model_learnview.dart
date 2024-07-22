import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  final user9 = PostModel1(1, 1, 'title', 'body');
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  final user1 = PostModel1(1, 1, 'title1', 'body');
  final user2 = PostModel2();
  user2.body='body2';
  final user3 = PostModel3(3, '', 3, 'title');
  final user4 = PostModel4(userId: 4, id: 4, title: 'title4', body: 'body');
  final user5 = PostModel5(userId: 5, id: 5, title: 'title5', body: 'body');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(user9.title),),
    
    );
  }
}