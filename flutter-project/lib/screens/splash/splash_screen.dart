import 'package:flutter/material.dart';
import 'package:flutter_project/core/colors/app_colors.dart';
import 'package:flutter_project/core/imagens/app_imagens.dart';
import 'package:flutter_project/core/tamanhos/app_size.dart';
import 'package:flutter_project/screens/home/home_screen.dart';
import 'package:flutter_project/screens/screens_index.dart';
import 'package:flutter_project/screens/signin/signin_screen.dart';
import 'package:flutter_project/screens/splash/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SplashScreenController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SplashScreenController(context);
    _controller.validarToken().then((value) {
      if (value) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Center(
          child: Column(children: const <Widget>[
        Spacer(),
        Text(
          'Bank Of Ufape',
          style: TextStyle(fontSize: 40, color: AppColors.kSecondaryColor),
        ),
        SizedBox(
          height: AppSize.kMediumSize,
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: Image(
            image: AssetImage('assets/images/logo.png'),
            width: 200,
          ),
        ),
        SizedBox(
          height: AppSize.kMediumSize,
        ),
        CircularProgressIndicator(
          color: AppColors.kPrimaryColor,
        ),
        SizedBox(
          height: AppSize.kMediumSize,
        ),
        Text(
          'Loading...',
          style: TextStyle(
              color: AppColors.kSecondaryColor,
              fontSize: AppSize.kMediumLargeSize),
        ),
        Spacer(),
      ])),
    );
  }
}
