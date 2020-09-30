import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CadastroPage extends GetView<YourController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CadastroPage')),
      body: Container(
        child: GetX<MyController>(
            init: MyController(),
            builder: (_) {
              return Container();
            }),
      ),
    );
  }
}
