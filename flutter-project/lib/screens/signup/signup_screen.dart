import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/core/colors/app_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Cadastre-se',
          style: TextStyle(color: AppColors.kBackgroundColor),
        ),
      ),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(hintText: 'Nome'),
          ),
        ),
      ),
    );
  }
}
