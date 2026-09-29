import 'package:flutter/material.dart';
import 'package:imagepicker/view/camera_image.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraImage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
