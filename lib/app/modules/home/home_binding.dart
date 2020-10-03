import 'package:get/get.dart';
import 'package:teste_verzel/app/data/provider/db/db.dart';
import 'package:teste_verzel/app/data/repository/usuario_repository.dart';
import 'package:teste_verzel/app/modules/cadastro/cadastro_controller.dart';
import 'package:teste_verzel/app/modules/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        () => HomeController(usuarioRepository: UsuarioRepository(db: DB())));
  }
}
