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

    return ElevatedButton(
      onPressed: () {
        funcao();
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: (larguraScreen * 0.05), horizontal: (larguraScreen * 0.01)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: Size((larguraScreen * 0.45), 150),
        elevation: 8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icone, size: 50),
          const SizedBox(height: 1),
          Text(texto,
              style: const TextStyle( fontSize: 20)),
        ],
      ),
    );
  }
}
