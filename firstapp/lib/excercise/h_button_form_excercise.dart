import 'package:flutter/material.dart';

class HButtonFormExcercise extends StatefulWidget {
  const HButtonFormExcercise({super.key});

  @override
  State<HButtonFormExcercise> createState() => _HButtonFormExcerciseState();
}

class _HButtonFormExcerciseState extends State<HButtonFormExcercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Button Form Field")));
  }

  Widget nameField() {
    return Column(
      children: [
        Text("Name"),
        TextField(
          keyboardType: TextInputType.numberWithOptions(),
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ],
    );
  }
}
