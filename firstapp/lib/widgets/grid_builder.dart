import 'package:flutter/material.dart';

class GridBuilder extends StatefulWidget {
  const GridBuilder({super.key});

  @override
  State<GridBuilder> createState() => _GridBuilderState();
}

class _GridBuilderState extends State<GridBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Builder")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.green,
              child: Center(
                child: Text("item ${index+1}"),
              )
            );
          },
        ),
      ),
    );
  }
}
