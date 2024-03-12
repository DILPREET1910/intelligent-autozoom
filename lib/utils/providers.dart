import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cameraStateProvider = StateProvider<int>((ref) => 0);
final cameraConterollerStateProvider =
    StateProvider<CameraController?>((ref) => null);
final zoomLevelStateProvider = StateProvider<double>((ref) => 1.0);
