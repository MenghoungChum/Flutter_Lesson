import 'package:flutter/material.dart';

class ScrollHorizontal extends StatefulWidget {
  const ScrollHorizontal({super.key});

  @override
  State<ScrollHorizontal> createState() => _ScrollHorizontalState();
}

class _ScrollHorizontalState extends State<ScrollHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal ListView"),
      ),
      body: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text("Item 1"),
              ),
            )
          ],
        ),
      ),
    );
  }
}