import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_verzel/app/modules/login/login_controller.dart';
import 'package:teste_verzel/app/theme/text_themes.dart';
import 'package:teste_verzel/app/widgets/custom_button.dart';
import 'package:teste_verzel/app/widgets/custom_tff.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => Container(
        margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 24.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 24.0, bottom: 16.0),
              child: Image.asset('assets/images/login.png'),
            ),
            Form(
                child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: CustomTextFormField(
                        type: TextInputType.text,
                        text: 'Email',
                        emailCheck: controller.isEmail,
                        onChanged: (value) => controller.onChangedEmail(value),
                        onSaved: (value) => controller.onSavedEmail(value),
                        validator: (value) => controller.validateEmail(value),
                      ),
                    ),
                    Icon(
                      Icons.check_circle_outline,
                      color: controller.isEmail == false
                          ? Colors.grey
                          : Colors.deepPurple,
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 24.0)),
                Row(
                  children: [
                    Flexible(
                      child: CustomTextFormField(
                        type: TextInputType.text,
                        text: 'Senha',
                        obscure: controller.viewPassword,
                        emailCheck: controller.isEmail,
                        onChanged: (value) => controller.onChangedSenha(value),
                        onSaved: (value) => controller.onSavedSenha(value),
                        validator: (value) => controller.validateSenha(value),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: controller.viewPassword == true
                              ? Colors.grey
                              : Colors.deepPurple,
                        ),
                      ),
                      onTap: controller.viewPasswordClick,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 32.0,
                  ),
                  child: CustomButtonWidget(
                    text: 'Entrar',
                    callback: () => controller.logar(),
                  ),
                ),
                Container(
                    child: GestureDetector(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Text(
                          'Ainda não possui uma conta?',
                          style: cadastrarLink,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Text(
                          'Cadastre-se grátuitamente aqui !',
                          style: cadastrarLink,
                        ),
                      ),
                    ],
                  ),
                  onTap: () => controller.cadastro(),
                ))
              ],
            )),
          ],
        ),
      ),
    ));
  }
}
