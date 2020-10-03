import 'package:teste_verzel/app/data/provider/db/db.dart';
import 'package:meta/meta.dart';

class UsuarioRepository {
  final DB db;
  UsuarioRepository({@required this.db});

  cadastroUsuario(usuario) => db.cadastroUsuario(usuario);

  loginUsuario(usuario) => db.loginUsuario(usuario);
}
