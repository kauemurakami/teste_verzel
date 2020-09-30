import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:teste_verzel/app/data/repository/usuario_repository.dart';

class CadastroController extends GetxController {
  final UsuarioRepository usuarioRepository;
  CadastroController({@required this.usuarioRepository})
      : assert(usuarioRepository != null);
}
