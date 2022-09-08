import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/screens/screens_index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenController {
  final BuildContext context;

  SplashScreenController(this.context);

  void initApplication() async {
    Future.delayed(const Duration(seconds: 3), () async {});
  }

  //Future configDefaultAppSettings() async {
  //await SystemChrome.setPreferredOrientations([
  //DeviceOrientation.portraitUp,
  //DeviceOrientation.portraitDown,
  //]);

  //return;
  //}

  Future<bool> validarToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('token') != null) {
      return true;
    } else {
      return false;
    }
  }
}
