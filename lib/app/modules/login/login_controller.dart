import 'package:get/get.dart';
import 'package:teste_verzel/app/data/repository/usuario_repository.dart';
import 'package:meta/meta.dart';

class LoginController extends GetxController {
  final UsuarioRepository usuarioRepository;
  LoginController({@required this.usuarioRepository})
      : assert(usuarioRepository != null);
}
