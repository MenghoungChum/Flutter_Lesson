import 'package:flutter/material.dart';

class BRowWidget extends StatefulWidget {
  const BRowWidget({super.key});

  @override
  State<BRowWidget> createState() => _BRowWidgetState();
}

class _BRowWidgetState extends State<BRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Widgets"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        child: Row(
          // spacing: 10,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}