import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/providers/contratos_provider.dart';
import 'package:trabalho3/ui/screens/contrato_screen.dart';
import 'package:trabalho3/ui/screens/formulario_contrato_screen.dart';
import 'package:trabalho3/ui/widgets/contrato_item_card.dart';
import 'package:trabalho3/ui/widgets/icone_flutuante_button.dart';

class ContratosScreen extends ConsumerWidget {
  const ContratosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contratosAsyncValue = ref.watch(contratosProvider);
    final contratosNotifier = ref.watch(contratosProvider.notifier);

    final contratoNotifier = ref.read(contratoProvider.notifier);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (contratosAsyncValue is AsyncLoading) {
        contratosNotifier.carregarListaContratos();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contratos ativos',
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Expanded(
            child: contratosAsyncValue.when(
                data: (data) {
                  if (data.isEmpty) {
                    return const Center(
                        child: Text('Sem contratos ativos no momento'));
                  }

                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data[index];

                      return ContratoItemCard(
                        parcelas: item.contrato.pagamentos.length.toString(),
                        nome: item.imovel.nome,
                        tipoIntervalo: item.contrato.intervaloPagamento,
                        dataInicio: item.contrato.dataInicio,
                        dataVencimento: item.contrato.dataFim,
                        funcao: () {
                          contratoNotifier.selecionar(item.contrato);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ContratoScreen()),
                          );
                        },
                      );
                    },
                  );
                },
                error: (error, stackTrace) {
                  return Text('Erro: $error');
                },
                loading: () => const CircularProgressIndicator()),
          ),
        ]),
      ),
      floatingActionButton: IconeFlutuanteButton(
        funcao: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const FormularioContratoScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
