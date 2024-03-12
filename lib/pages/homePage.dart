import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intelligent_autozoom/models/screen_params.dart';
import 'package:intelligent_autozoom/widgets/detector_widget.dart';
import 'package:intelligent_autozoom/widgets/shutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenParams.screenSize = MediaQuery.sizeOf(context);

    double zoom = 1.0;
    double scaleFactor = 1.0;

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter homePageSetState) {
        return Scaffold(
          key: GlobalKey(),
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text('Intelligent Autozoom'),
          ),
          body: Stack(
            children: [
              InteractiveViewer(
                minScale: 0.1,
                maxScale: 8.0,
                child: const DetectorWidget(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ShutterWidget(
                  homePageSetState: homePageSetState,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
