import 'package:get/route_manager.dart';
import 'package:teste_verzel/app/modules/cadastro/cadastro_binding.dart';
import 'package:teste_verzel/app/modules/cadastro/cadastro_page.dart';
import 'package:teste_verzel/app/modules/home/home_binding.dart';
import 'package:teste_verzel/app/modules/home/home_page.dart';
import 'package:teste_verzel/app/modules/login/login_page.dart';
import 'package:teste_verzel/app/routes/app_routes.dart';

abstract class Pages {
  static final pages = [
    GetPage(
        name: Routes.ROUTE_CADASTRO,
        page: () => CadastroPage(),
        binding: CadastroBinding()),
    GetPage(
        name: Routes.ROUTE_HOME,
        page: () => HomePage(),
        binding: HomeBinding()),
    GetPage(
      name: Routes.ROUTE_LOGIN,
      page: () => LoginPage(),
    ),
  ];
}
