import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';  

class TextoIconeButton extends StatelessWidget {
  final String texto;
  final IconData icone;
  final Function funcao;
  const TextoIconeButton({super.key, required this.texto, required this.icone, required this.funcao});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {funcao();},
      style: ElevatedButton.styleFrom(

        backgroundColor: backgroundColor,
        padding: const EdgeInsets.all(20), 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), 
        ),
        fixedSize: const Size(150, 150), 
         elevation: 8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
          Icon(icone, color: highlightSoft, size: 50), 
          const SizedBox(height: 5),
          Text(texto, style: const TextStyle(color: highlightSoft, fontSize: 20)), 
        ],
      ),
    );
  }
}
