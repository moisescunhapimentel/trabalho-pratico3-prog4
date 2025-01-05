import 'package:flutter/material.dart';
import 'package:trabalho3/ui/widgets/titulo_descricao_text.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';

class ContratoScreen extends StatelessWidget {
  final DateTime dataInicio;
  final DateTime dataFim;
  final TipoIntervalo intervaloPagamento;
  final int diaPagamento;
  final int? mesPagamento;

  const ContratoScreen({
    Key? key,
    required this.dataInicio,
    required this.dataFim,
    required this.intervaloPagamento,
    required this.diaPagamento,
    this.mesPagamento,
  }) : super(key: key);

  String formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contrato'),
      ),
      body: Stack(
        children: [
          Form(
            child: ListView(
              padding: const EdgeInsets.all(20.0),
              children: [
                TituloDescricaoText(
                  titulo: 'Data de Início',
                  descricao: formatDate(dataInicio),
                ),
                const SizedBox(height: 20),
                TituloDescricaoText(
                  titulo: 'Data de Fim',
                  descricao: formatDate(dataFim),
                ),
                const SizedBox(height: 20),
                TituloDescricaoText(
                  titulo: 'Intervalo de Pagamento',
                  descricao: intervaloPagamento.name,
                ),
                const SizedBox(height: 20),
                TituloDescricaoText(
                  titulo: 'Dia de Pagamento',
                  descricao: diaPagamento.toString(),
                ),
                if (mesPagamento != null) ...[
                  const SizedBox(height: 20),
                  TituloDescricaoText(
                    titulo: 'Mês de Pagamento',
                    descricao: mesPagamento.toString(),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
