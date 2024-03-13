import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intelligent_autozoom/utils/providers.dart';

class CameraAppBar extends ConsumerStatefulWidget {
  const CameraAppBar({super.key});

  @override
  ConsumerState<CameraAppBar> createState() => _CameraAppBarState();
}

class _CameraAppBarState extends ConsumerState<CameraAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ref.watch(zoomLevelStateProvider) == 1.0
            ? const Icon(
                Icons.one_x_mobiledata_rounded,
                color: Colors.yellow,
              )
            : IconButton(
                icon: const Icon(
                  Icons.one_x_mobiledata_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  ref.watch(zoomLevelStateProvider.notifier).state = 1.0;
                },
              ),
        ref.watch(cameraFlashModeStateProvider) == FlashMode.off
            ? IconButton(
                onPressed: () {
                  ref.watch(cameraFlashModeStateProvider.notifier).state =
                      FlashMode.always;
                },
                icon: const Icon(
                  Icons.flash_off_rounded,
                  color: Colors.white,
                ),
              )
            : IconButton(
                onPressed: () {
                  ref.watch(cameraFlashModeStateProvider.notifier).state =
                      FlashMode.off;
                },
                icon: const Icon(
                  Icons.flash_on_rounded,
                  color: Colors.yellow,
                ),
              ),
      ],
    );
  }
}
