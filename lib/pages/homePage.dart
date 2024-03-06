import 'package:flutter/material.dart';
import 'package:intelligent_autozoom/models/screen_params.dart';
import 'package:intelligent_autozoom/widgets/detector_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenParams.screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      key: GlobalKey(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Intelligent Autozoom'),
      ),
      body: const DetectorWidget(),
    );
  }
}
