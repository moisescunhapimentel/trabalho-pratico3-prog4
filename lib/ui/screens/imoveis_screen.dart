import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/ui/widgets/icone_flutuante_button.dart';
import 'package:trabalho3/ui/widgets/imovel_item_card.dart';
import 'package:trabalho3/ui/screens/formulario_imovel_screen.dart';
import 'package:trabalho3/ui/widgets/menu_suspenso_button.dart';
import 'package:trabalho3/providers/imovel_providers.dart';

class ImoveisScreen extends ConsumerWidget {
  const ImoveisScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Usar o imoveisProvider para obter o estado da lista de imóveis
    final imoveisAsyncValue = ref.watch(imoveisProvider);
    final imoveisNotifier = ref.watch(imoveisProvider.notifier);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (imoveisAsyncValue is AsyncLoading) {
        imoveisNotifier.carregarListaImoveis();
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imóveis'),
      ),
      body: imoveisAsyncValue.when(
        data: (imoveis) {
          return ListView.builder(
            itemCount: imoveis.length,
            itemBuilder: (context, index) {
              final imovel = imoveis[index];
              return ListTile(
                title: Text(imovel.nome),
                subtitle: Text('Endereço: Desconhecido'),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, stack) => Center(child: Text('Erro: $e')),
      ),
       floatingActionButton: IconeFlutuanteButton(
        funcao: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const FormularioImovelScreen(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
