import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:teste_verzel/app/theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final Function(String value) onSaved;
  final Function(String value) onChanged;
  final Function(String value) validator;
  final bool emailCheck;
  final String text;
  final Widget sufixIcon;
  final TextInputAction action;
  final TextInputType type;
  final bool obscure;
  final TextEditingController controller;
  final TextDirection direction;
  final int max;
  final List<MaskTextInputFormatter> formatter;

  CustomTextFormField({
    this.formatter = const [],
    this.emailCheck,
    this.text,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.sufixIcon,
    this.action,
    this.type,
    this.obscure = false,
    this.controller,
    this.direction = TextDirection.ltr,
    this.max,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: this.formatter,
      maxLength: this.max,
      textDirection: this.direction,
      controller: this.controller,
      obscureText: this.obscure,
      style: TextStyle(fontSize: 20),
      keyboardType: this.type,
      cursorColor: Colors.purpleAccent,
      decoration: InputDecoration(
          //contentPadding: EdgeInsets.only(top: 5),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: mainColor)),
          labelText: this.text,
          suffixIcon: this.sufixIcon),
      onChanged: (value) => this.onChanged(value),
      onSaved: (value) => this.onSaved(value),
      validator: (value) => this.validator(value),
      textInputAction: this.action,
    );
  }
}
