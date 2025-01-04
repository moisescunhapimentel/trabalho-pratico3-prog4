import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trabalho3/ui/widgets/padrao_texto_button.dart';
import '../../data/enums/tipo_intervalo.dart';

class VencimentoProximoCard extends StatelessWidget {
  final String nomeImovel;
  final String nomeInquelino;
  final double valorContrato;
  final TipoIntervalo tipoIntervalo;
  final DateTime dataVencimento;
  final Function() funcao;

  const VencimentoProximoCard(
      {super.key,
      required this.nomeImovel,
      required this.nomeInquelino,
      required this.tipoIntervalo,
      required this.dataVencimento,
      required this.valorContrato,
      required this.funcao});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
         // color: surfaceColor,
          borderRadius: BorderRadius.circular(6),
          
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nomeImovel,  style: Theme.of(context).textTheme.displayLarge,
                        
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text('$valorContrato',  style: Theme.of(context).textTheme.bodyMedium),
                          const SizedBox(width: 4),
                          const Text('|'),
                          const SizedBox(width: 4),
                          Text(tipoIntervalo.name, style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        nomeInquelino,
                        style: Theme.of(context).textTheme.bodyMedium
                      ),
                    ],
                  ),
                ),
                // Lado direito
                Text(
                  DateFormat('dd/MM/yyyy')
                      .format(dataVencimento), 
                  style: Theme.of(context).textTheme.bodyMedium
                ),
              ],
            ),
            PadraoTextoButton(texto: "cobrar", funcao: () {}),
          ],
        ),
      ),
    );
  }
}
