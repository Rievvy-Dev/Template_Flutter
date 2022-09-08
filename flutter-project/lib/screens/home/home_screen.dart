import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/core/colors/app_colors.dart';
import 'package:flutter_project/screens/cadastroAgencia/add_agencia_screen.dart';
import 'package:flutter_project/screens/home/home_screen_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () => HomeScreenController.addAgencia(context),
            child: const Text('Cadastrar Agência')),
        ElevatedButton(
            onPressed: () => HomeScreenController.showAgencia(context),
            child: const Text('Listar Agências')),
      ])),
    );
  }
}
