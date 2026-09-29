import 'package:flutter/material.dart';

class FStatckExcercise extends StatefulWidget {
  const FStatckExcercise({super.key});

  @override
  State<FStatckExcercise> createState() => _FStatckExcerciseState();
}

class _FStatckExcerciseState extends State<FStatckExcercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack and Positioned Widget")),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(left: 10, top: 10, child: card(Colors.red, "Red")),
            Positioned(left: 60, top: 60, child: card(Colors.purple, "Purple")),
            Positioned(
              left: 120,
              top: 120,
              child: card(Colors.yellow.shade600, "Yellow"),
            ),
          ],
        ),
      ),
    );
  }
}

Widget card(Color c, String colorName) {
  return Container(
    width: 150,
    height: 150,
    padding: EdgeInsets.only(left: 10, top: 10),
    decoration: BoxDecoration(
      color: c,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      colorName,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        color: Colors.white,
      ),
    ),
  );
}
