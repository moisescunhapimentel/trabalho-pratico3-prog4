import 'package:flutter/material.dart';
import 'package:trabalho3/ui/widgets/imovel_item_button.dart';
import '../../data/enums/tipo_intervalo.dart';

class ContratosScreen extends StatelessWidget {
  const ContratosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        const Text('Vencimento Próximo'),
        ImovelItemButton(
          nome: 'Apartamento em Camocim',
          parcelas: '3',
          tipoIntervalo: TipoIntervalo.anual, // Use o enum TipoIntervalo
          diaPagamento: 7,
          dataVencimento: DateTime(2024, 12, 31),
        ),
      ]),
    );
  }
}
