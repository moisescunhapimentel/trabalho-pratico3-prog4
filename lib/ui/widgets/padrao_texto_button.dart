import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';

class PadraoTextoButton extends StatelessWidget {
  final String texto;
  final void Function() funcao;
  
  const PadraoTextoButton({super.key, required this.texto, required this.funcao});

  @override
  Widget build(BuildContext context) {
    
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(accentSecondary),
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16, horizontal: 30)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        )),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}