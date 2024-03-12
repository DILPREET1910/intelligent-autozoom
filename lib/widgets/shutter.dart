import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intelligent_autozoom/utils/providers.dart';

class ShutterWidget extends ConsumerWidget {
  final StateSetter homePageSetState;
  const ShutterWidget({
    super.key,
    required this.homePageSetState,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int camera = ref.watch(cameraStateProvider);

    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.black.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              ref.read(zoomLevelStateProvider.notifier).state = 1.0;
            },
            icon: const Icon(
              Icons.camera,
              color: Colors.white,
            ),
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
            onPressed: () {
              homePageSetState(() {
                if (camera == 0) {
                  ref.read(cameraStateProvider.notifier).state = 1;
                } else {
                  ref.read(cameraStateProvider.notifier).state = 0;
                }
              });
            },
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
