import 'package:flutter/material.dart';
import 'package:imagepicker/controller/image_picker_controller.dart';

class CameraImage extends StatefulWidget {
  const new({super.key});

  @override
  State<CameraImage> createState() => _CameraImageState();
}

class _CameraImageState extends State<CameraImage> {
  ImagePickerController imagePickerController = ImagePickerController();

  @override
  void initState() {
    imagePickerController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    imagePickerController.dispose();
    super.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configure Camera"),
        actions: [
          IconButton(
            onPressed: () {
              imagePickerController.openCamera();
            },
            icon: Icon(Icons.camera),
          ),

          IconButton(
            onPressed: () {
              imagePickerController.getImage();
            },
            icon: Icon(Icons.photo),
          ),
        ],
      ),
      body: imagePickerController.image == null
          ? Center(child: Text("No image"))
          : Image.file(imagePickerController.image!),
    );
  }
}
