import 'package:flutter/material.dart';

class CampoSimplesTextform extends StatelessWidget {
  final TextEditingController controller;
  final String rotulo;
  final bool textoLongo;

  const CampoSimplesTextform({super.key, required this.controller, required this.rotulo, this.textoLongo = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(

        labelText: rotulo,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, preencha o campo $rotulo';
        }
        return null;
      },
      maxLines: textoLongo ? 5 : 1,
      keyboardType: textoLongo ? TextInputType.multiline : TextInputType.text,
    );
  }
}
