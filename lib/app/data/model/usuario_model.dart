import 'package:get/state_manager.dart';

class RxUser {
  final nome = ''.obs;
  final telefone = ''.obs;
  final endereco = ''.obs;
  final dataNasc = ''.obs;
  final cpf = ''.obs;
  final cep = ''.obs;
  final email = ''.obs;
  final senha = ''.obs;
}

class Usuario {
  Usuario(nome, telefone, endereco, dataNasc, cpf, cep, email, senha);

  final rx = RxUser();

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
}
