import 'package:get/get.dart';
import 'package:teste_verzel/app/data/model/usuario_model.dart';
import 'package:teste_verzel/app/data/repository/usuario_repository.dart';
import 'package:meta/meta.dart';
import 'package:teste_verzel/app/routes/app_routes.dart';

class LoginController extends GetxController {
  final UsuarioRepository usuarioRepository;
  LoginController({@required this.usuarioRepository})
      : assert(usuarioRepository != null);

  final Usuario usuario = Usuario();

  final _isEmail = false.obs;
  get isEmail => this._isEmail.value;
  set isEmail(value) => this._isEmail.value = value;

  final _viewPassword = true.obs;
  get viewPassword => this._viewPassword.value;
  set viewPassword(value) => this._viewPassword.value = value;

  viewPasswordClick() => this.viewPassword == true
      ? this.viewPassword = false
      : this.viewPassword = true;

  onSavedEmail(value) => this.usuario.email = value;
  onChangedEmail(value) =>
      GetUtils.isEmail(value) ? this.isEmail = true : this.isEmail = false;
  validateEmail(value) =>
      GetUtils.isEmail(value) ? null : 'Insira um Email válido';

  onSavedSenha(value) => this.usuario.senha = value;
  onChangedSenha(value) => '';
  validateSenha(value) => value.length < 4 ? 'Senha inválida' : null;

  logar() {}

  cadastro() => Get.toNamed(Routes.ROUTE_CADASTRO);
}
