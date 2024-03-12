import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intelligent_autozoom/services/recognition.dart';
import 'package:intelligent_autozoom/utils/providers.dart';

/// Individual bounding box
class BoxWidget extends ConsumerWidget {
  final Recognition result;

  const BoxWidget({super.key, required this.result});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Color for bounding box
    Color color = Colors.primaries[
        (result.label.length + result.label.codeUnitAt(0) + result.id) %
            Colors.primaries.length];

    return Positioned(
      left: result.renderLocation.left,
      top: result.renderLocation.top,
      width: result.renderLocation.width,
      height: result.renderLocation.height,
      child: GestureDetector(
        onDoubleTap: () {
          ref.read(zoomLevelStateProvider.notifier).state =
              MediaQuery.of(context).size.width / result.renderLocation.width;
        },
        child: Container(
          width: result.renderLocation.width,
          height: result.renderLocation.height,
          decoration: BoxDecoration(
              border: Border.all(color: color, width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(2))),
          child: Align(
            alignment: Alignment.topLeft,
            child: FittedBox(
              child: Container(
                color: color,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(result.label),
                    Text(" ${result.score.toStringAsFixed(2)}"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
