import 'package:flutter/material.dart';

class CColumnAndRow extends StatefulWidget {
  const CColumnAndRow({super.key});

  @override
  State<CColumnAndRow> createState() => _CColumnAndRowState();
}

class _CColumnAndRowState extends State<CColumnAndRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column and Row"),
        centerTitle: true,
      ),
      body: Column(
        spacing: 20,
        children: [
          Row(
            spacing: 20,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            spacing: 20,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ],
          ),
          Row(
            spacing: 20,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              
            ],
          ),
          Row(
            spacing: 20,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            spacing: 20,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              
            ],
          ),
          Row(
            spacing: 20,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}