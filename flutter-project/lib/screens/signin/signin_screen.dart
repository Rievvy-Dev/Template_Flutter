import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/core/colors/app_colors.dart';
import 'package:flutter_project/screens/home/home_screen.dart';
import 'package:flutter_project/screens/screens_index.dart';
import 'package:flutter_project/screens/signin/signin_contoller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../core/tamanhos/app_size.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Bank Of Ufape',
                  style:
                      TextStyle(fontSize: 40, color: AppColors.kSecondaryColor),
                ),
                const SizedBox(
                  height: AppSize.kMediumSize,
                ),
                const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: AppSize.kMediumSize,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Usuário',
                      style: TextStyle(
                          color: Colors.white, fontSize: AppSize.kMediumSize),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return 'Por favor, digite seu e-mail';
                      } else if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(_emailController.text)) {
                        return 'Por favor, digite um e-mail válido';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      filled: true,
                      fillColor: AppColors.kPrimaryColor,
                      hintText: 'Digite seu e-mail',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _passwordContoller,
                    keyboardType: TextInputType.text,
                    validator: (senha) {
                      if (senha == null) {
                        return 'Por favor, digite sua senha';
                      } else if (senha.length < 6) {
                        return 'Digite uma senha maior que 6 caracteres';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      filled: true,
                      fillColor: AppColors.kPrimaryColor,
                      hintText: 'Digite sua senha',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 39,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen())),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.kPrimaryColor),
                    ),
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                          color: Colors.white, fontSize: AppSize.kMediumSize),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () => SignInController.signUp(context),
                  child: const Text(
                    'Cadastre-se',
                    style: TextStyle(
                        color: AppColors.kSecondaryColor,
                        decoration: TextDecoration.underline,
                        fontSize: AppSize.kMediumSize),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> login() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var url = Uri.parse('');
    var response = await http.post(
      url,
      body: {
        'username': _emailController.text,
        'password': _passwordContoller,
      },
    );
    if (response.statusCode == 200) {
      print(jsonDecode(response.body)['token']);
      return true;
    } else {
      print(jsonDecode(response.body));
      return false;
    }
  }
}
