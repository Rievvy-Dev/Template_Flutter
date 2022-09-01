import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home/home_screen.dart';
import 'package:flutter_project/screens/screens_index.dart';
import 'package:flutter_project/screens/signin/signin_screen.dart';
import 'package:flutter_project/screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto-POO',
      home: const SplashScreen(),
      routes: {
        Screens.splash: (BuildContext context) => const SplashScreen(),
        Screens.home: (BuildContext context) => const HomeScreen(),
        Screens.signin: (BuildContext context) => const SignInScreen(),
      },
    );
  }
}
