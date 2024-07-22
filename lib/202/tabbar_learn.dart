import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: TabBar(
            onTap: (value) {},
            tabs: _MyTabViews.values.map((e) => Tab(text: e.name.toUpperCase(),)).toList()
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(0);
          },
        ),
        appBar: AppBar(),
        body: TabBarView(children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.pink,
          ),
        ]),
      ),
    );
  }
}

enum _MyTabViews { home, settings, profile, favourite }

extension _MyTabViewExtension on _MyTabViews{

}