import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:teste_verzel/app/modules/cadastro/cadastro_controller.dart';
import 'package:teste_verzel/app/routes/app_routes.dart';
import 'package:teste_verzel/app/utils/keys.dart';
import 'package:teste_verzel/app/utils/masks.dart';
import 'package:teste_verzel/app/widgets/custom_button.dart';
import 'package:teste_verzel/app/widgets/custom_tff.dart';

class CadastroPage extends GetView<CadastroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CadastroPage')),
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(24.0),
              child: Form(
                key: Keys.formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      onChanged: (value) => controller.onChangedNome(value),
                      onSaved: (value) => controller.onSavedNome(value),
                      validator: (value) => controller.validateNome(value),
                      text: 'Nome',
                    ),
                    CustomTextFormField(
                      type: TextInputType.emailAddress,
                      onChanged: (value) => controller.onChangedEmail(value),
                      onSaved: (value) => controller.onSavedEmail(value),
                      validator: (value) => controller.validateEmail(value),
                      text: 'Email',
                    ),
                    CustomTextFormField(
                      onChanged: (value) => controller.onChangedSenha(value),
                      onSaved: (value) => controller.onSavedSenha(value),
                      validator: (value) => controller.validateSenha(value),
                      text: 'Senha',
                    ),
                    CustomTextFormField(
                      type: TextInputType.number,
                      text: 'Data de Nascimento',
                      formatter: [AppMasks.maskDataNasc],
                      onChanged: (value) => controller.onChangedDataNasc(value),
                      onSaved: (value) => controller.onSavedDataNasc(value),
                      validator: (value) => controller.validateDataNasc(value),
                    ),
                    CustomTextFormField(
                      type: TextInputType.number,
                      text: 'CPF',
                      formatter: [AppMasks.maskCPF],
                      onChanged: (value) => controller.onChangedCPF(value),
                      onSaved: (value) => controller.onSavedCPF(value),
                      validator: (value) => controller.validateCPF(value),
                    ),
                    CustomTextFormField(
                      type: TextInputType.number,
                      onChanged: (value) => controller.onChangedCEP(value),
                      onSaved: (value) => controller.onSavedCEP(value),
                      validator: (value) => controller.validateCEP(value),
                      text: 'CEP',
                      formatter: [
                        MaskTextInputFormatter(
                            mask: '##.###-###', filter: {"#": RegExp(r'[0-9]')})
                      ],
                    ),
                    CustomTextFormField(
                      onChanged: (value) => controller.onChangedEndereco(value),
                      onSaved: (value) => controller.onSavedEndereco(value),
                      validator: (value) => controller.validateEndereco(value),
                      text: 'Endereço',
                    ),
                    CustomTextFormField(
                      type: TextInputType.number,
                      onChanged: (value) => controller.onChangedTelefone(value),
                      onSaved: (value) => controller.onSavedTelefone(value),
                      validator: (value) => controller.validateTelefone(value),
                      text: 'Telefone',
                      formatter: [
                        MaskTextInputFormatter(
                            mask: '(##)#####-####',
                            filter: {"#": RegExp(r'[0-9]')})
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24.0),
                      child: CustomButtonWidget(
                          text: 'Cadastrar',
                          callback: () {
                            final FormState form = Keys.formKey.currentState;
                            if (form.validate()) {
                              form.save();
                              controller.cadastrar();
                              Get.offAllNamed(Routes.ROUTE_HOME);
                            } else {
                              print('erro ao entrar');
                            }
                          }),
                    )
                  ],
                ),
              )),
        ));
  }
}
