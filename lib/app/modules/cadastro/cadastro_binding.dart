import 'package:get/get.dart';
import 'package:teste_verzel/app/data/provider/db/db.dart';
import 'package:teste_verzel/app/data/repository/usuario_repository.dart';
import 'package:teste_verzel/app/modules/cadastro/cadastro_controller.dart';

class CadastroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CadastroController>(() =>
        CadastroController(usuarioRepository: UsuarioRepository(db: DB())));
  }
}
