import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intelligent_autozoom/models/screen_params.dart';
import 'package:intelligent_autozoom/utils/providers.dart';
import 'package:intelligent_autozoom/widgets/detector_widget.dart';
import 'package:intelligent_autozoom/widgets/shutter.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
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
              const DetectorWidget(),
              Align(
                alignment: Alignment.bottomCenter,
                child: ShutterWidget(
                  homePageSetState: homePageSetState,
                ),
              ),
              GestureDetector(
                onScaleStart: (details) {
                  zoom = scaleFactor;
                },
                onScaleUpdate: (details) {
                  if (scaleFactor >= 1.0 && scaleFactor <= 8.0) {
                    scaleFactor = zoom * details.scale;
                  } else if (scaleFactor < 1.0) {
                    scaleFactor = 1.0;
                  } else if (scaleFactor > 8.0) {
                    scaleFactor = 8.0;
                  }

                  ref.read(zoomLevelStateProvider.notifier).state = scaleFactor;
                  print("Scale factor = ${ref.read(zoomLevelStateProvider)}");
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
