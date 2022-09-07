import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/app.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    tools: [
      ...DevicePreview.defaultTools,
    ],
    builder: (context) => const MyApp(),
  ));
}
