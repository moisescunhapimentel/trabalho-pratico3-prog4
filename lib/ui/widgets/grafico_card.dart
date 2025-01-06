import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/data/models/intervalo.dart';
import 'package:trabalho3/ui/constants/colors.dart';
import 'package:trabalho3/ui/providers/providers.dart';
import 'package:trabalho3/ui/widgets/seletor_button.dart';
import 'package:fl_chart/fl_chart.dart';

class GraficoCard extends ConsumerWidget {
  const GraficoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var larguraScreen = MediaQuery.of(context).size.width;
    final pagamentosState = ref.watch(pagamentosProvider);
    final tipoIntervalo = ref.watch(intervaloProvider);

    final now = DateTime.now();

    monthReadNotifier() =>
        ref.read(pagamentosProvider.notifier).obterPagamentosPorIntervalo(
            Intervalo(inicio: max(1, now.month - 5), fim: now.month),
            TipoIntervalo.mensal);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (pagamentosState is AsyncLoading) {
        monthReadNotifier();
      }
    });

    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Lucro', style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 10),
          SeletorButton(
              opcao1: TipoIntervalo.mensal.name,
              opcao2: TipoIntervalo.anual.name,
              selectedOption: tipoIntervalo.name,
              funcao: (String value) {
                if (TipoIntervaloExtension.byName(value) ==
                    TipoIntervalo.anual) {
                  ref
                      .read(pagamentosProvider.notifier)
                      .obterPagamentosPorIntervalo(
                          Intervalo(inicio: now.year - 5, fim: now.year),
                          TipoIntervalo.anual);
                } else {
                  monthReadNotifier();
                }

                ref.read(intervaloProvider.notifier).state =
                    TipoIntervaloExtension.byName(value);
              }),
          const SizedBox(height: 10),
          Container(
            height: 200,
            width: (larguraScreen * 0.9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: highlightSoft,
                width: 1,
              ),
            ),
            child: Builder(
              builder: (context) {
                return pagamentosState.when(
                    data: (data) {
                      final groupedData =
                          _getGroupedData(data.pagamentos, tipoIntervalo);
                      final keyGroupedData = groupedData.keys.toList()..sort();

                      return BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.spaceAround,
                          barTouchData: BarTouchData(enabled: false),
                          titlesData: const FlTitlesData(
                            show: true,
                          ),
                          borderData: FlBorderData(show: false),
                          gridData: const FlGridData(show: false),
                          barGroups: keyGroupedData.map(
                            (e) {
                              return BarChartGroupData(
                                x: e,
                                barRods: [
                                  BarChartRodData(
                                      toY: groupedData[e]!, color: Colors.blue),
                                ],
                              );
                            },
                          ).toList(),
                        ),
                      );
                    },
                    error: (error, stackTrace) => const Center(
                        child: Text(
                            'Não foi possível recuperar os dados solicitados')),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()));
              },
            ),
          ),
        ],
      ),
    );
  }

  Map<int, double> _getGroupedData(
      List<PagamentoTableData> pagamentos, TipoIntervalo tipoIntervalo) {
    Map<int, double> groupedData = {};

    for (var pagamento in pagamentos) {
      int key;
      double value = pagamento.valor;

      if (tipoIntervalo == TipoIntervalo.mensal) {
        key = pagamento.createdAt.month;
      } else {
        key = pagamento.createdAt.year;
      }

      if (groupedData.containsKey(key)) {
        groupedData[key] = groupedData[key]! + value;
      } else {
        groupedData[key] = value;
      }
    }

    return groupedData;
  }
}
