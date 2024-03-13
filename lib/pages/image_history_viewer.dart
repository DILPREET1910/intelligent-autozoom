import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageHistoryViewer extends StatefulWidget {
  final List<File> listImages;
  const ImageHistoryViewer({
    super.key,
    required this.listImages,
  });

  @override
  State<ImageHistoryViewer> createState() => _ImageHistoryViewerState();
}

class _ImageHistoryViewerState extends State<ImageHistoryViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: CarouselSlider(
        items: widget.listImages
            .map(
              (file) => InteractiveViewer(
                minScale: 0.1,
                maxScale: 8.0,
                child: Image.file(file),
              ),
            )
            .toList(),
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          enableInfiniteScroll: false,
        ),
      ),
    );
  }
}
