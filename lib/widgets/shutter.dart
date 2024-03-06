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
    );
  }
}
