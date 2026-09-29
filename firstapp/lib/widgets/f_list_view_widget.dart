import 'package:firstapp/excercise/f_statck_excercise.dart';
import 'package:flutter/material.dart';

class FListViewWidget extends StatefulWidget {
  const FListViewWidget({super.key});

  @override
  State<FListViewWidget> createState() => _FListViewWidgetState();
}

class _FListViewWidgetState extends State<FListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view Widget"),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          card(Colors.red, "red"),
          card(Colors.pink, "red"),
          card(Colors.blue, "red"),
          card(Colors.yellow, "red"),
          card(Colors.green, "red"),
          card(Colors.cyan, "red"),
          card(Colors.orange, "red"),
          
        ],
      ),
    );
  }
}