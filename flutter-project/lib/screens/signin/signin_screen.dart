import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

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
              child: Image.asset('assets/images/logo.png'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Usuário',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 39,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Entrar'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.kBackgroundColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
