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
      children: [
        ref.watch(zoomLevelStateProvider) == 1.0
            ? const Text(
                "1x",
                style: TextStyle(
                  color: Colors.yellow,
                ),
              )
            : GestureDetector(
                child: const Text(
                  "1x",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  ref.watch(zoomLevelStateProvider.notifier).state = 1.0;
                },
              ),
      ],
    );
  }
}

