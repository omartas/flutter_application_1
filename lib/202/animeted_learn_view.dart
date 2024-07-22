import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  // late kullandığımız değişkenleri initState içinde atamalıyız.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isopacity = false;

  late AnimationController controller;
  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      _isopacity = !_isopacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
          controller.animateTo(_isVisible ? 1 : 0);
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                duration: _DurationItems.durationLow,
                opacity: _isopacity ? 1 : 0,
                child: Text('Data')),
            trailing: IconButton(
                onPressed: () {
                  changeOpacity();
                },
                icon: Icon(Icons.settings)),
          ),
          AnimatedDefaultTextStyle(
              child: Text('DATA'),
              style: (_isVisible
                      ? context.textTheme().headline1
                      : context.textTheme().subtitle1) ??
                  TextStyle(),
              duration: _DurationItems.durationLow),
          AnimatedIcon(icon: AnimatedIcons.close_menu, progress: controller),
          AnimatedContainer(
            color: Colors.amber,
            duration: _DurationItems.durationLow,
            height: _isVisible ? 0 : MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width *0.2,
          )
        ],
      ),

      //_isVisible ? Placeholder() : null,
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: SizedBox(),
        crossFadeState:
            _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: _DurationItems.durationLow);
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}
