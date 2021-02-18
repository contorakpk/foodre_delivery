import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class ImageBuilder extends StatefulWidget {
  final String imageName;

  ImageBuilder({this.imageName});

  @override
  _ImageBuilderState createState() => _ImageBuilderState();
}

class _ImageBuilderState extends State<ImageBuilder> {
  Uint8List imageFile;

  getImage() {
    const int MAX_SIZE = 13 * 1024;

    FirebaseStorage.instance
        .ref()
        .child(widget.imageName)
        .getData(MAX_SIZE)
        .then((value) => setState(() {
              imageFile = value;
            }));
  }

  @override
  void initState() {
    getImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return imageFile == null
        ? Image.memory(
            imageFile,
            fit: BoxFit.fill,
          )
        : Text('Suck');
  }
}
