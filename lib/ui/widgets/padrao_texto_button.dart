import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';

class PadraoTextoButton extends StatelessWidget {
  final String texto;
  final Color? cor;
  final Color? corFundo;
  final void Function() funcao;
  
  const PadraoTextoButton({super.key, required this.texto, required this.funcao, this.cor, this.corFundo});

  @override
  Widget build(BuildContext context) {
    
    return TextButton(
      onPressed: funcao,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(corFundo ?? accentSecondary),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 16, horizontal: 30)),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        )),
      ),
      child: Text(
        texto,
        style: TextStyle(
          color: cor ?? backgroundColor,
          fontSize: 20,
        ),
      ),
    );
  }
}