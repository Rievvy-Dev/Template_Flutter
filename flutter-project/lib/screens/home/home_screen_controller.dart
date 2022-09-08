import 'package:flutter/widgets.dart';
import 'package:flutter_project/screens/screens_index.dart';

class HomeScreenController {
  static void addAgencia(BuildContext context) {
    Navigator.pushNamed(context, Screens.add);
  }

  static void showAgencia(BuildContext context) {
    Navigator.pushNamed(context, Screens.show);
  }
}
