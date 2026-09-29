import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement_app/view/counter_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}