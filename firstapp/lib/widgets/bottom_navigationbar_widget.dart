import 'package:flutter/material.dart';

class BottomNavigationbarWidget extends StatefulWidget {
  const BottomNavigationbarWidget({super.key});

  @override
  State<BottomNavigationbarWidget> createState() =>
      _BottomNavigationbarWidgetState();
}

class _BottomNavigationbarWidgetState extends State<BottomNavigationbarWidget> {
  int currentIndex = 1;
  List pages = [
    Center(child: Text("Home screen")),
    Center(child: Text("Search Screen")),
    Center(child: Text("Profile Screen")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}
