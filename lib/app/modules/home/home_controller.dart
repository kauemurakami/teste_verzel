import 'package:get/get.dart';
import 'package:teste_verzel/app/data/model/usuario_model.dart';
import 'package:teste_verzel/app/data/repository/usuario_repository.dart';
import 'package:meta/meta.dart';
import 'package:teste_verzel/app/modules/auth/auth_service.dart';

class HomeController extends GetxController {
  final UsuarioRepository usuarioRepository;
  HomeController({@required this.usuarioRepository})
      : assert(usuarioRepository != null);
  Usuario usuario = Usuario();

  @override
  void onInit() {
    this.usuario = AuthController.usuario;
    super.onInit();
  }

  tarefasUsuario() {}
}
