import 'package:flutter/material.dart';
import 'package:trabalho3/ui/screens/imovel_item_button.dart';

class ContratosScreen extends StatelessWidget {
  const ContratosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        const Text('Vencimento Próximo'),
        ImovelItemButton(nome: 'Sitio em Capitão de Campos', parcelas: '12', tipo: 'mensal', diaPagamento: '10', dataVencimento: DateTime.now()),
      ]),
    );
  }
}
