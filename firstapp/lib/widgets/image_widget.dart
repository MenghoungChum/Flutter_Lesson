import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
        centerTitle: true,
      ),
      body: Center(
        child: Image.network(
          "https://i.pinimg.com/736x/ab/4c/83/ab4c83478feba8e02ea7ddf30e624a88.jpg",
          width: 300,
          height: 400,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}