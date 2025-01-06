import 'package:flutter/material.dart';

class MenuSuspenso extends StatelessWidget {
  final String? valorSelecionado;
  final List<String> opcoes;
  final String rotulo;
  final ValueChanged<String?> onChanged;

  const MenuSuspenso({
    super.key,
    required this.valorSelecionado,
    required this.opcoes,
    required this.rotulo,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: valorSelecionado,
      hint: Text(rotulo),
      onChanged: onChanged,
      items: opcoes.map((String opcao) {
        return DropdownMenuItem<String>(
          value: opcao,
          child: Text(opcao),
        );
      }).toList(),
      validator: (value) => value == null ? 'Selecione uma opção' : null,
    );
  }
}
