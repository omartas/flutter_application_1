import 'package:flutter/material.dart';

class ImagePickerGenericView extends StatefulWidget {
  const ImagePickerGenericView({super.key});

  @override
  State<ImagePickerGenericView> createState() => _ImagePickerGenericViewState();
}

class _ImagePickerGenericViewState extends State<ImagePickerGenericView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ElevatedButton(onPressed: (){}, child: Text('fetch from gallery')),
        ElevatedButton(onPressed: (){}, child: Text('fetch from normal')),
        ElevatedButton(onPressed: (){}, child: Text('fetch from multiple')),
      ],
      ),
    );
  }
}