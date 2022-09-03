import 'package:flutter/material.dart';
import 'package:flutter_project/app.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  DevicePreview(
    enabled: true,
    tools: const [...DevicePreview.defaultTools],
    builder: ((context) => (const MyApp())),
  );
}
