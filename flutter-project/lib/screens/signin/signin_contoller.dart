import 'package:flutter/material.dart';
import 'package:flutter_project/screens/screens_index.dart';
import 'package:flutter_project/screens/signin/signin_repository.dart';

class SignInController {
  static void signUp(BuildContext context) {
    Navigator.pushNamed(context, Screens.signup);
  }
}
