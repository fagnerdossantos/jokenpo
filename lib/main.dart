import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:flutter/material.dart' show runApp;

import 'package:device_preview/device_preview.dart' show DevicePreview, Devices;

import 'package:jokenpo/app_widget.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      defaultDevice: Devices.ios.iPhone13,
      builder: (_) => AppWidget(),
    ),
  );
}
