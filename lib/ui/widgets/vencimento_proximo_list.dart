import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/providers/vencimento_provider.dart';
import 'package:trabalho3/ui/widgets/vencimento_proximo_card.dart';
import 'package:trabalho3/utils/whatsapp.dart';

class VencimentoProximoList extends ConsumerWidget {
  const VencimentoProximoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var larguraScreen = MediaQuery.of(context).size.width;
    var alturaScreen = MediaQuery.of(context).size.height;

    final vencimentoAsyncValue = ref.watch(vencimentoNotifierProvider);
    final vencimentoNotifier = ref.watch(vencimentoNotifierProvider.notifier);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (vencimentoAsyncValue is AsyncLoading) {
        vencimentoNotifier.obterContratosVencimentosProximos();
      }
    });

    return Container(
      height: alturaScreen * 0.55,
      margin: EdgeInsets.symmetric(horizontal: larguraScreen * 0.06),
      child: vencimentoAsyncValue.when(
          data: (data) {
            if (data.isEmpty) {
              return const Center(
                child: Text('Não há vencimentos próximos'),
              );
            }

            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final vencimento = data[index];

                return VencimentoProximoCard(
                  nomeImovel: vencimento.imovel.nome,
                  nomeInquelino: vencimento.cliente.nome,
                  tipoIntervalo: vencimento.contrato.intervaloPagamento,
                  valorContrato: vencimento.contrato.valor,
                  dataVencimento: vencimento.data,
                  funcao: () async {
                    await abrirWhatsApp(vencimento.cliente.contato);
                  },
                );
              },
            );
          },
          error: (error, stackTrace) {
            return const Center(
              child: Text('Erro ao carregar os vencimentos'),
            );
          },
          loading: () => const CircularProgressIndicator()),
    );
  }
}
