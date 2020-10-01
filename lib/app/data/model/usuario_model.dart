import 'package:get/state_manager.dart';

class RxUser {
  final nome = ''.obs;
  final id = 0.obs;
  final telefone = ''.obs;
  final endereco = ''.obs;
  final dataNasc = ''.obs;
  final cpf = ''.obs;
  final cep = ''.obs;
  final email = ''.obs;
  final senha = ''.obs;
}

class Usuario {
  Usuario({id, nome, email, senha, dataNasc, cpf, cep, telefone, endereco});

  final rx = RxUser();
  get id => rx.id.value;
  set id(value) => rx.id.value = value;
  get nome => rx.nome.value;
  set nome(value) => rx.nome.value = value;
  get telefone => rx.telefone.value;
  set telefone(value) => rx.telefone.value = value;
  get endereco => rx.endereco.value;
  set endereco(value) => rx.endereco.value = value;
  get dataNasc => rx.dataNasc.value;
  set dataNasc(value) => rx.dataNasc.value = value;
  get cpf => rx.cpf.value;
  set cpf(value) => rx.cpf.value = value;
  get cep => rx.cep.value;
  set cep(value) => rx.cep.value = value;
  get email => rx.email.value;
  set email(value) => rx.email.value = value;
  get senha => rx.senha.value;
  set senha(value) => rx.senha.value = value;

  Usuario.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.nome = json['nome'];
    this.email = json['email'];
    this.senha = json['senha'];
    this.dataNasc = json['dataNasc'];
    this.cpf = json['cpf'];
    this.cep = json['cep'];
    this.telefone = json['telefone'];
    this.endereco = json['endereco'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['dataNasc'] = this.dataNasc;
    data['cpf'] = this.cpf;
    data['cep'] = this.cep;
    data['telefone'] = this.telefone;
    data['endereco'] = this.endereco;

    return data;
  }
}
