import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/core/colors/app_colors.dart';
import 'package:flutter_project/core/tamanhos/app_size.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AddAgencia extends StatelessWidget {
  AddAgencia({super.key});

  final TextEditingController numeroController = TextEditingController();
  final TextEditingController estadoController = TextEditingController();
  final TextEditingController cidadeController = TextEditingController();
  final TextEditingController ruaController = TextEditingController();
  final TextEditingController numEndController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Cadastre uma Agência',
            style: TextStyle(
              fontSize: AppSize.kHugeSize,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: numeroController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              filled: true,
              fillColor: AppColors.kPrimaryColor,
              hintText: 'Digite o número da Agência',
            ),
          ),
          TextFormField(
            controller: estadoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              filled: true,
              fillColor: AppColors.kPrimaryColor,
              hintText: 'Digite o Estado',
            ),
          ),
          TextFormField(
            controller: cidadeController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              filled: true,
              fillColor: AppColors.kPrimaryColor,
              hintText: 'Digite a Cidade',
            ),
          ),
          TextFormField(
            controller: ruaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              filled: true,
              fillColor: AppColors.kPrimaryColor,
              hintText: 'Digite a Rua',
            ),
          ),
          TextFormField(
            controller: numEndController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              filled: true,
              fillColor: AppColors.kPrimaryColor,
              hintText: 'Digite o numero do imóvel',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              cadastrarAgencia(
                numeroController.text,
                estadoController.text,
                cidadeController.text,
                ruaController.text,
                numEndController.text,
              );
            },
            child: const Text('Cadastrar Agência'),
          )
        ]),
      ),
    );
  }

  void cadastrarAgencia(String numeroAgencia, String estado, String cidade,
      String rua, String numEnd) async {
    var response = await http.post(
      Uri.parse('http://localhost:8080/banco/agencia'),
      body: {
        "numero": numeroAgencia,
        "endereco": {
          "estado": estado,
          "cidade": cidade,
          "rua": rua,
          "numero": numEnd,
        }
      },
    );
    var data = json.encode(response.body);
    print(response.statusCode);
  }
}
