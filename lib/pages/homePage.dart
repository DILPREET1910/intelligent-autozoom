import 'package:flutter/material.dart';
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
              const DetectorWidget(),
              Align(
                alignment: Alignment.bottomCenter,
                child: ShutterWidget(
                  homePageSetState: homePageSetState,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
