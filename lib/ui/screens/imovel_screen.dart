import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabalho3/ui/models/imovel_model.dart';
import 'package:trabalho3/ui/widgets/seletor_button.dart';
import 'package:trabalho3/ui/widgets/titulo_descricao_text.dart';

class ImovelScreen extends StatelessWidget {
  final String nomeImovel, descricao, rua, numImovel, bairro, cEP;

  const ImovelScreen({
    super.key,
    required this.nomeImovel,
    required this.descricao,
    required this.rua,
    required this.numImovel,
    required this.bairro,
    required this.cEP,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ImovelModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Imóvel'),
        ),
        body: Stack(
          children: [
            Form(
              key: GlobalKey<FormState>(),
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Consumer<ImovelModel>(
                    builder: (context, imovelModel, child) {
                      return SeletorButton(
                        opcao1: 'Sobre',
                        opcao2: 'Cômodos',
                        selectedOption: imovelModel.selectedOption,
                        funcao: imovelModel.updateOption,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Consumer<ImovelModel>(
                    builder: (context, imovelModel, child) {
                      if (imovelModel.selectedOption == 'Sobre') {
                        return Column(
                          children: [
                            TituloDescricaoText(
                                titulo: 'Nome do Imóvel:', descricao: nomeImovel),
                            const SizedBox(height: 20),
                            TituloDescricaoText(
                                titulo: 'Descrição:', descricao: descricao),
                            const SizedBox(height: 20),
                            Text('Endereço',
                                style: Theme.of(context).textTheme.displayLarge),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: TituloDescricaoText(
                                      titulo: 'Rua:', descricao: rua),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: TituloDescricaoText(
                                      titulo: 'Número:', descricao: numImovel),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            TituloDescricaoText(
                                titulo: 'Bairro:', descricao: bairro),
                            const SizedBox(height: 20),
                            TituloDescricaoText(
                                titulo: 'CEP:', descricao: cEP),
                          ],
                        );
                      } else if (imovelModel.selectedOption == 'Cômodos') {
                        return Column(
                          children: [
                            Text('Cômodos',
                                style: Theme.of(context).textTheme.displayLarge),
                            const SizedBox(height: 20),
                            const Text('Em breve...'),
                          ],
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
