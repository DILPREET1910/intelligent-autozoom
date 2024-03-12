import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class ImagePreview extends StatelessWidget {
  final XFile image;
  const ImagePreview({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.file(
        File(image.path),
      ),
    );
  }
}
