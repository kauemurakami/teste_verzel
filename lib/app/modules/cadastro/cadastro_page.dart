import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:teste_verzel/app/modules/cadastro/cadastro_controller.dart';

class CadastroPage extends GetView<CadastroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CadastroPage')),
      body: Container(child: Text('cadastro')),
    );
  }
}
