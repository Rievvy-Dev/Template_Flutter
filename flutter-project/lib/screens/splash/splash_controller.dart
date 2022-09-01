import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/screens/screens_index.dart';

class SplashScreenController {
  final BuildContext context;

  SplashScreenController(this.context);

  void initApplication() async {
    Future.delayed(const Duration(seconds: 3), () async {
      await configDefaultAppSettings();
      Navigator.popAndPushNamed(context, Screens.signin);
    });
  }

  Future configDefaultAppSettings() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return;
  }
}
