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
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return ContratoItemCard(
                        parcelas: '10',
                        nome: 'Apartamento em Camocim',
                        tipoIntervalo: TipoIntervalo.anual,
                        dataInicio: DateTime(2023),
                        dataVencimento: DateTime(2024, 12, 31),
                        funcao: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContratoScreen(
                                      dataInicio: DateTime(2024, 1, 1),
                                      dataFim: DateTime(2024, 12, 31),
                                      intervaloPagamento: TipoIntervalo.anual,
                                      diaPagamento: 02,
                                      mesPagamento: null,
                                    )),
                          );
                        },
                      );
                    },
                  );
                },
                error: (error, stackTrace) {},
                loading: () => CircularProgressIndicator()),
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
