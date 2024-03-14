import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intelligent_autozoom/services/recognition.dart';

final cameraStateProvider = StateProvider<int>((ref) => 0);
final cameraConterollerStateProvider =
    StateProvider<CameraController?>((ref) => null);
final cameraFlashModeStateProvider =
    StateProvider<FlashMode>((ref) => FlashMode.off);
final zoomLevelStateProvider = StateProvider<double>((ref) => 1.0);
final resultsStateProvider = StateProvider<List<Recognition>>((ref) => []);
