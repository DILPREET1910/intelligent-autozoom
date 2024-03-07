import 'package:flutter_riverpod/flutter_riverpod.dart';

final cameraStateProvider = StateProvider<int>((ref) => 0);
final zoomLevelStateProvider = StateProvider<double>((ref) => 1.0);
