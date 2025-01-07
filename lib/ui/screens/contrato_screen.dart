import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/providers/contratos_provider.dart';
import 'package:trabalho3/ui/widgets/titulo_descricao_text.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';

import 'package:intl/intl.dart';

class ContratoScreen extends ConsumerWidget {
  const ContratoScreen({super.key});

  String formatDate(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contrato = ref.watch(contratoProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Contrato'),
        ),
        body: Builder(
          builder: (context) {
            if (contrato == null) {
              return const Center(
                child: Text('Nenhum contrato selecionado'),
              );
            }

            return Stack(
              children: [
                Form(
                  child: ListView(
                    padding: const EdgeInsets.all(20.0),
                    children: [
                      TituloDescricaoText(
                        titulo: 'Data de Início',
                        descricao: formatDate(contrato.dataInicio),
                      ),
                      const SizedBox(height: 20),
                      TituloDescricaoText(
                        titulo: 'Data de Fim',
                        descricao: formatDate(contrato.dataFim),
                      ),
                      const SizedBox(height: 20),
                      TituloDescricaoText(
                        titulo: 'Intervalo de Pagamento',
                        descricao: contrato.intervaloPagamento.name,
                      ),
                      const SizedBox(height: 20),
                      TituloDescricaoText(
                        titulo: 'Dia de Pagamento',
                        descricao: contrato.dataInicio.day.toString(),
                      ),
                      if (contrato.intervaloPagamento ==
                          TipoIntervalo.anual) ...[
                        const SizedBox(height: 20),
                        TituloDescricaoText(
                          titulo: 'Mês de Pagamento',
                          descricao: contrato.dataInicio.month.toString(),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            );
          },
        ));
  }
}
