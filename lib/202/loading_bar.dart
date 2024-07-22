import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, this.size});
  final double? size;   
  final _defaultSize = 40.0;


    //Packege ları kulanırken bunu yapmamızdaki sebep componentlerin sayfadan direkt erişmesini engellemek,
    //generic olarak kullanabilmek ve kodu ortaklaştırabilmek. 
  @override
  Widget build(BuildContext context) {
    return SpinKitDoubleBounce(
      color: Colors.red,
      size: size ?? _defaultSize,
    );
  }
}