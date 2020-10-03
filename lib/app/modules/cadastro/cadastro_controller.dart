import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:teste_verzel/app/data/repository/usuario_repository.dart';
import 'package:teste_verzel/app/modules/auth/auth_service.dart';
import 'package:teste_verzel/app/routes/app_routes.dart';

class CadastroController extends GetxController {
  final UsuarioRepository usuarioRepository;
  CadastroController({@required this.usuarioRepository})
      : assert(usuarioRepository != null);

  onSavedCPF(value) => AuthController.usuario.cpf = value;
  onChangedCPF(value) => '';
  validateCPF(value) => GetUtils.isCpf(value) ? null : 'Insira um CPF válido';

  onSavedSenha(value) => AuthController.usuario.senha = value;
  onChangedSenha(value) => '';
  validateSenha(value) =>
      value.length < 4 ? 'Insira uma senha com mais de 4 digitos' : null;

  onSavedTelefone(value) => AuthController.usuario.telefone = value;
  onChangedTelefone(value) => '';
  validateTelefone(value) =>
      value.length < 15 ? null : 'Insira um número de telefone válido';

  onSavedEmail(value) => AuthController.usuario.email = value;
  onChangedEmail(value) => '';
  validateEmail(value) =>
      GetUtils.isEmail(value) ? null : 'Insira um email válido';

  onSavedNome(value) => AuthController.usuario.nome = value;
  onChangedNome(value) => '';
  validateNome(value) => value.length < 3 ? 'Insira um nome válido' : null;

  onSavedDataNasc(value) => AuthController.usuario.dataNasc = value;
  onChangedDataNasc(value) => '';
  validateDataNasc(value) {
    final ano = value.toString().substring(6, 9);
    final idade = 2020 - int.parse(ano);
    if (idade < 12) {
      return 'Você precisa ter mais de 12 anos para se cadastrar';
    } else
      return null;
  }

  onSavedCEP(value) => AuthController.usuario.cep = value;
  onChangedCEP(value) => '';
  validateCEP(value) => value.length < 8 ? 'Insira um CEP válido' : null;

  onSavedEndereco(value) => AuthController.usuario.endereco = value;
  onChangedEndereco(value) => '';
  validateEndereco(value) =>
      value.length < 5 ? 'Insira um endereço válido' : null;

  cadastrar() {
    final u = AuthController.usuario;
    if (u != null) {
      usuarioRepository.cadastroUsuario(u);
      print(u.id);
    }
  }
}
