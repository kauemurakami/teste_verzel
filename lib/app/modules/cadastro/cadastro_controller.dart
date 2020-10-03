import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:teste_verzel/app/data/repository/usuario_repository.dart';
import 'package:teste_verzel/app/modules/auth/auth_service.dart';

class CadastroController extends GetxController {
  final UsuarioRepository usuarioRepository;
  CadastroController({@required this.usuarioRepository})
      : assert(usuarioRepository != null);

  onSavedCPF(value) => '';
  onChangedCPF(value) => '';
  validateCPF(value) => '';

  onSavedSenha(value) => '';
  onChangedSenha(value) => '';
  validateSenha(value) => '';

  onSavedTelefone(value) => '';
  onChangedTelefone(value) => '';
  validateTelefone(value) => '';

  onSavedEmail(value) => '';
  onChangedEmail(value) => '';
  validateEmail(value) => '';

  onSavedNome(value) => '';
  onChangedNome(value) => '';
  validateNome(value) => '';

  onSavedDataNasc(value) => '';
  onChangedDataNasc(value) => '';
  validateDataNasc(value) => '';

  onSavedCEP(value) => '';
  onChangedCEP(value) => '';
  validateCEP(value) => '';

  onSavedEndereco(value) => '';
  onChangedEndereco(value) => '';
  validateEndereco(value) => '';

  cadastrar() => usuarioRepository.cadastroUsuario(AuthController.usuario);
}
