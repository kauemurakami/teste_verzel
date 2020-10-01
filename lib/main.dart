import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:teste_verzel/app/modules/login/login_binding.dart';
import 'package:teste_verzel/app/modules/login/login_page.dart';
import 'package:teste_verzel/app/routes/app_pages.dart';
import 'package:teste_verzel/app/routes/app_routes.dart';
import 'package:teste_verzel/app/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.ROUTE_LOGIN,
    initialBinding: LoginBinding(),
    home: LoginPage(),
    getPages: Pages.pages,
    theme: appThemeData,
  ));
}
