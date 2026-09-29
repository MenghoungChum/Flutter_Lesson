import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabar Screen"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),text: "Home",),
              Tab(icon: Icon(Icons.search),text: "Search",),
              Tab(icon: Icon(Icons.settings),text: "Settomg",),
            ],
            indicatorColor: Colors.green,
            // indicator: Decor,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text("Home"),),
          Center(child: Text("Search"),),
          Center(child: Text("Setting"),)
        ]),
      ),
    );
  }
}
