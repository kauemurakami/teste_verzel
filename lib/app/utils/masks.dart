import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AppMasks {
  static final maskCPF = MaskTextInputFormatter(
      mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});
  static final maskDataNasc = MaskTextInputFormatter(
      mask: "##/##/####", filter: {"#": RegExp(r'[0-9]')});
}
