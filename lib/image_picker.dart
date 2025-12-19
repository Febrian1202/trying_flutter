import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({super.key});

  @override
  State<ImagePickerDemo> createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: const Text(
            'Image Picker Demo',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
                color: image == null ? Colors.grey.shade200 : null,
                image: image != null
                    ? DecorationImage(image: FileImage(File(image!.path)))
                    : null,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement image picker functionality here
                ImagePicker()
                    .pickImage(
                      source: ImageSource.camera,
                      preferredCameraDevice: CameraDevice.rear,
                    )
                    .then((value) {
                      // Handle the selected image
                      setState(() {
                        image = value;
                      });
                    });
              },
              child: Text('Pick Image from Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}
