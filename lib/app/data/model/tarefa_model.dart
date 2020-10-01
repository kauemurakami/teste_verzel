import 'package:get/state_manager.dart';

class RxTarefa {
  final id = 0.obs;
  final nome = ''.obs;
  final dataEntrega = ''.obs;
  final dataConclusao = ''.obs;
}

class Tarefa {
  Tarefa({id, nome, dataEntrega, dataConclusao});

  final rx = RxTarefa();

  get id => rx.id.value;
  set id(value) => rx.id.value = value;
  get nome => rx.nome.value;
  set nome(value) => rx.nome.value = value;
  get dataEntrega => rx.dataEntrega.value;
  set dataEntrega(value) => rx.dataEntrega.value = value;
  get dataConclusao => rx.dataConclusao.value;
  set dataConclusao(value) => rx.dataConclusao.value = value;

  Tarefa.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.nome = json['nome'];
    this.dataEntrega = json['dataEntrega'];
    this.dataConclusao = json['dataConclusao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['dataEntrega'] = this.dataEntrega;
    data['dataConclusao'] = this.dataConclusao;
    return data;
  }
}
