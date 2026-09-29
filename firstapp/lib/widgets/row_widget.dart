import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row"), centerTitle: true),
      body: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(right: 10),
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(right: 10),
            color: Colors.green,
          ),
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(right: 10),
            color: Colors.red,
          ),
          
        ],
      ),
    );
  }
}
