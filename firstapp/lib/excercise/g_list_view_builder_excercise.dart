import 'package:flutter/material.dart';

class GListViewBuilderExcercise extends StatefulWidget {
  const GListViewBuilderExcercise({super.key});

  @override
  State<GListViewBuilderExcercise> createState() =>
      _GListViewBuilderExcerciseState();
}

class _GListViewBuilderExcerciseState extends State<GListViewBuilderExcercise> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(width: 100, color: Colors.red);
            },
          ),
        ),

      ],
    );
  }
}
