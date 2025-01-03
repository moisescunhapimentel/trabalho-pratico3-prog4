import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';
import 'package:intl/intl.dart'; 
import 'package:trabalho3/data/enums/tipo_intervalo.dart';

class ImovelItemButton extends StatelessWidget {
  final String nome;
  final String parcelas;
  final TipoIntervalo tipoIntervalo;
  final int diaPagamento;
  final DateTime dataVencimento;
  final Function() funcao;
  const ImovelItemButton({super.key, required this.nome, required this.parcelas, required this.tipoIntervalo, required this.diaPagamento, required this.dataVencimento, required this.funcao});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: funcao,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 8),

        decoration: BoxDecoration(
          color: surfaceColor,
          borderRadius: BorderRadius.circular(6),
          border: const Border(
            bottom: BorderSide(
              width: 2, 
              color: highlightSoft, 
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text('$parcelas parcelas'),
                      const SizedBox(width: 4),
                      const Text('|'),
                      const SizedBox(width: 4),
                      Text(tipoIntervalo.toString()),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Dia de pagamento: $diaPagamento',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            // Lado direito: Ícone
            Text(
              DateFormat('dd/MM/yyyy').format(dataVencimento), // Formata a data
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
