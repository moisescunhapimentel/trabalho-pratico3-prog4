import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/providers/imovel_providers.dart'; 
import 'package:trabalho3/ui/widgets/titulo_descricao_text.dart';
class ImovelScreen extends ConsumerWidget {
  final int imovelId;

  const ImovelScreen({
    super.key,
    required this.imovelId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Buscando o imóvel com o endereço
    final imovelAsyncValue = ref.watch(imovelEnderecoProvider(imovelId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Imóvel'),
      ),
      body: imovelAsyncValue.when(
        data: (imovel) {
          if (imovel == null) {
            return const Center(child: Text('Imóvel não encontrado'));
          }

          return Stack(
            children: [
              Form(
                key: GlobalKey<FormState>(),
                child: ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: [
                    const SizedBox(height: 20),
                    TituloDescricaoText(
                      titulo: 'Nome do Imóvel:',
                      descricao: imovel.nome,
                    ),
                    const SizedBox(height: 20),
                    TituloDescricaoText(
                      titulo: 'Descrição:',
                      descricao: imovel.descricao,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Endereço',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TituloDescricaoText(
                            titulo: 'Rua:',
                            descricao: imovel.endereco.rua,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TituloDescricaoText(
                            titulo: 'Número:',
                            descricao: imovel.endereco.numero,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    TituloDescricaoText(
                      titulo: 'Bairro:',
                      descricao: imovel.endereco.bairro,
                    ),
                    const SizedBox(height: 20),
                    TituloDescricaoText(
                      titulo: 'CEP:',
                      descricao: imovel.endereco.cEP,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Erro: $error')),
      ),
    );
  }
}
