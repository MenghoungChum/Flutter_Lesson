import 'package:firstapp/replace_page/navigator/page1.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop (
              context,
              MaterialPageRoute(builder: (context) => Page1()),
            );
          },
          child: Text("Go to page 1"),
        ),
      )
    );
  }
}
