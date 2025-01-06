import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/models/imovel.dart';
import 'package:trabalho3/providers/imovel_provider.dart'; 
import 'package:trabalho3/ui/widgets/seletor_button.dart';
import 'package:trabalho3/ui/widgets/titulo_descricao_text.dart';

class ImovelScreen extends ConsumerWidget {
  final int imovelId;  

  const ImovelScreen({
    super.key,
    required this.imovelId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Carregar o imóvel ao construir a tela
    ref.read(imovelProvider.notifier).carregarImovel(imovelId);

    final imovel = ref.watch(imovelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Imóvel'),
      ),
      body: imovel == null
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                Form(
                  key: GlobalKey<FormState>(),
                  child: ListView(
                    padding: const EdgeInsets.all(16.0),
                    children: [
                      SeletorButton(
                        opcao1: 'Sobre',
                        opcao2: 'Cômodos',
                        selectedOption: 'Sobre', 
                        funcao: (option) {
                         
                        },
                      ),
                      const SizedBox(height: 20),
                      TituloDescricaoText(
                          titulo: 'Nome do Imóvel:', descricao: imovel.nome),
                      const SizedBox(height: 20),
                      TituloDescricaoText(
                          titulo: 'Descrição:', descricao: imovel.descricao),
                      const SizedBox(height: 20),
                      Text('Endereço',
                          style: Theme.of(context).textTheme.displayLarge),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: TituloDescricaoText(
                                titulo: 'Rua:', descricao: imovel.endereco.rua),
                          ),
                          Expanded(
                            flex: 1,
                            child: TituloDescricaoText(
                                titulo: 'Número:', descricao: imovel.endereco.numero),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TituloDescricaoText(
                          titulo: 'Bairro:', descricao: imovel.endereco.bairro),
                      const SizedBox(height: 20),
                      TituloDescricaoText(
                          titulo: 'CEP:', descricao: imovel.endereco.cEP),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
