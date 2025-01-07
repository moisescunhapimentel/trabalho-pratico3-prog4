import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';

class ContratoItemCard extends StatelessWidget {
  final String nome;
  final String parcelas;
  final TipoIntervalo tipoIntervalo;
  final DateTime dataInicio;
  final DateTime dataVencimento;
  final Function() funcao;
  const ContratoItemCard(
      {super.key,
      required this.nome,
      required this.parcelas,
      required this.tipoIntervalo,
      required this.dataInicio,
      required this.dataVencimento,
      required this.funcao});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: funcao,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nome,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text('$parcelas parcelas'),
                        const SizedBox(width: 4),
                        const Text('|'),
                        const SizedBox(width: 4),
                        Text(tipoIntervalo.name),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Dia de pagamento: ${dataInicio.day}',
                    ),
                  ],
                ),
              ),
              // Lado direito: Ícone
              Text(
                DateFormat('dd/MM/yyyy').format(dataVencimento),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
