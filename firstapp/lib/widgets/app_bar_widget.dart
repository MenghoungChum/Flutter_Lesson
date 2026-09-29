import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Page Title"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [Icon(Icons.notifications), Icon(Icons.search)],
      ),
      body: Center(
        child: Text(
          "Data",
          style: TextStyle(
            fontSize: 100, 
            // backgroundColor: Colors.amber,
            color: Colors.white,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.red,
            shadows: [
              Shadow(
                blurRadius: 20,
                color: Colors.black,
                offset: Offset(10, 0)
              )
            ]
          ),
        ),
      ),
    );
  }
}
