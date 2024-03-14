import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intelligent_autozoom/utils/providers.dart';

class ObjectsWidget extends ConsumerStatefulWidget {
  const ObjectsWidget({super.key});

  @override
  ConsumerState<ObjectsWidget> createState() => _ObjectsWidgetState();
}

class _ObjectsWidgetState extends ConsumerState<ObjectsWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: ref.watch(resultsStateProvider).map(
          (result) {
            Color color = Colors.primaries[
                (result.label.length + result.label.codeUnitAt(0) + result.id) %
                    Colors.primaries.length];

            return GestureDetector(
              onTap: () {
                ref.read(zoomLevelStateProvider.notifier).state =
                    MediaQuery.of(context).size.width /
                        result.renderLocation.width;
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  border: Border.all(
                    color: color,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  result.label,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
