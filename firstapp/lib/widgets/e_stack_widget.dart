import 'package:flutter/material.dart';

class EStackWidget extends StatefulWidget {
  const EStackWidget({super.key});

  @override
  State<EStackWidget> createState() => _EStackWidgetState();
}

class _EStackWidgetState extends State<EStackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Stack and Position widget"),
      ),
      body: 
      Stack( 
        children: [
          Container(
            width: 400,
            height: 400,
            color: Colors.red,
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.purple,
            ),
          ),
          Positioned(
            left: 120,
            top: 100,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}