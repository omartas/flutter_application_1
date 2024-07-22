import 'package:flutter/material.dart';

class AppbarLearnView extends StatelessWidget {
  AppbarLearnView({super.key});
  final String _appbarTitle = 'Welcome Learn';
  final IconColor iconColor =IconColor();
  final IconSizes iconSize = IconSizes();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text(_appbarTitle),
        leading: Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu_book))
        ],
      ),

      body: Column(
        children: [
          IconButton(onPressed: (){}, 
          icon: Icon( 
            Icons.abc_outlined,
            size: iconSize.iconSmallSize,
            color: iconColor.iconColorfloy,
              ),
            ),

            IconButton(onPressed: (){}, 
          icon: Icon( 
            Icons.abc_outlined,
            size: 40,
            color: iconColor.iconColorfloy,
              ),
            ),

            IconButton(onPressed: (){}, 
          icon: Icon( 
            Icons.abc_outlined,
            size: iconSize.iconSmallSize,
            color: iconColor.iconColorfloy,
              ),
            ),
            IconButton(onPressed: (){}, 
          icon: Icon( 
            Icons.abc_outlined,
            size: 40,
            color: Colors.red,
              ),
            ),
          Center(
            child: CircularProgressIndicator())
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmallSize =40;
}

class IconColor{
  final Color iconColorfloy = Color(0xFFED617A);
}