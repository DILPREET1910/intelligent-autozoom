import 'package:flutter/material.dart';

class ShutterWidget extends StatefulWidget {
  const ShutterWidget({super.key});

  @override
  State<ShutterWidget> createState() => _ShutterWidgetState();
}

class _ShutterWidgetState extends State<ShutterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.black.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera),
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(15),
              child: const Icon(Icons.camera_alt),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.1),
              ),
              padding: const EdgeInsets.all(12),
              child: const Icon(
                Icons.autorenew_sharp,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
