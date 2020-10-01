import 'package:get/get.dart';
import 'package:teste_verzel/app/data/provider/db/db.dart';
import 'package:teste_verzel/app/data/repository/usuario_repository.dart';
import 'package:teste_verzel/app/modules/auth/auth_service.dart';
import 'package:teste_verzel/app/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(
          usuarioRepository: UsuarioRepository(db: DB()),
        ));
    Get.lazyPut<AuthController>(() => AuthController(
          usuarioRepository: UsuarioRepository(db: DB()),
        ));
  }
}
