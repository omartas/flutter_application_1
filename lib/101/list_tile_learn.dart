import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            //title: Text('how do you use') ,
            title: SizedBox(child: RandomImage(imageHeight: 200,)),
            subtitle: Text('how do you use'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.join_right_rounded),
            onTap: () {},
          )
        ],
      ),
    );
  }
}

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.imageHeight=100});
  final imageUrl = 'https://picsum.photos/200/300'; 
  final double imageHeight; 
  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl,height:imageHeight);
  }
}