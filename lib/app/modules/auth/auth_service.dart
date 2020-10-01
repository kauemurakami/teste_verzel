import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:teste_verzel/app/data/repository/usuario_repository.dart';

class AuthController extends GetxService {
  final UsuarioRepository usuarioRepository;
  AuthController({@required this.usuarioRepository})
      : assert(usuarioRepository != null);
}
