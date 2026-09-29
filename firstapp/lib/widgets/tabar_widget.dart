import 'package:flutter/material.dart';

class TabarWidget extends StatefulWidget {
  const TabarWidget({super.key});

  @override
  State<TabarWidget> createState() => _TabarWidgetState();
}

class _TabarWidgetState extends State<TabarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),text: "Home",),
              Tab(icon: Icon(Icons.search),text: "Search",),
              Tab(icon: Icon(Icons.person),text: "Profile",)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Home Page screen"),
            ),
            Center(
              child: Text("Search screen"),
            ),
            Center(
              child: Text("Profile screen"),
            )
          ],
        ),
      )
    );
  }
}