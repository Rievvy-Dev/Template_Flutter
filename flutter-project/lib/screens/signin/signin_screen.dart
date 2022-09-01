import 'package:flutter/material.dart';
import 'package:flutter_project/core/colors/app_colors.dart';
import 'package:flutter_project/screens/signin/signin_contoller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Usuário',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 39,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Entrar'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.kBackgroundColor),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () => SignInController.signUp(context),
                child: const Text('Cadastre-se'))
          ],
        ),
      ),
    );
  }
}
