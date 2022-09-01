import 'package:flutter/material.dart';
import 'package:flutter_project/screens/screens_index.dart';

class SignInController {
  static void signUp(BuildContext context) {
    Navigator.pushNamed(context, Screens.signup);
  }
}
