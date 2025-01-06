import 'package:flutter/material.dart';

class TextoIconeButton extends StatelessWidget {
  final String texto;
  final IconData icone;
  final Function funcao;
  const TextoIconeButton(
      {super.key,
      required this.texto,
      required this.icone,
      required this.funcao});

  @override
  Widget build(BuildContext context) {
    var larguraScreen = MediaQuery.of(context).size.width;
    var alturaScreen = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: () {
        funcao();
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: (larguraScreen * 0.03), horizontal: (larguraScreen * 0.02)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: Size((larguraScreen * 0.42), alturaScreen * 0.20),
        elevation: 8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icone, size: 24),
          const SizedBox(height: 4),
          Text(texto,
              style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
