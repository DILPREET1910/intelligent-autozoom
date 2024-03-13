import 'package:flutter/material.dart';

class ImageHistoryViewer extends StatefulWidget {
  const ImageHistoryViewer({super.key});

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
    );
  }
}
