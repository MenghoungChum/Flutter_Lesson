import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends ChangeNotifier {
  ImagePicker imagePicker = ImagePicker();
  File? image;

  Future<void> openCamera() async {
    XFile? chooser = await imagePicker.pickImage(source: ImageSource.camera);
    if (chooser != null) {
      image = File(chooser.path);
      Gal.putImage(chooser.path);
    }
    notifyListeners();
  }

  Future<void> getImage() async {
    XFile? chooser = await imagePicker.pickImage(source: ImageSource.gallery);
    if (chooser != null) {
      image = File(chooser.path);
    }
    notifyListeners();
  }
}
