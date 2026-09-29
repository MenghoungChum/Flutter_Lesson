import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Statck"),
        centerTitle: true,
      ),
      body:Center(
        child: Stack(
          children: [
            Container(width: 400,height: 400,color: Colors.red,),
            Container(width: 300,height: 300,color: Colors.yellow,),
            Container(width: 200,height: 200,color: Colors.green,),
            Container(width: 100,height: 100,color: Colors.pink,)
          ],
        ),
      ) ,
    );
  }
}
