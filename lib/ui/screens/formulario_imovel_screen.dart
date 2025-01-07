import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/ui/widgets/campo_simples_textform.dart';
import 'package:trabalho3/ui/widgets/padrao_texto_button.dart';
import 'package:trabalho3/ui/widgets/seletor_button.dart';
import 'package:trabalho3/providers/imovel_providers.dart';

class FormularioImovelScreen extends ConsumerWidget {
  const FormularioImovelScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final accentPrimary = theme.colorScheme.primary;
    final surfaceColor = theme.colorScheme.surface;

    final formState = ref.watch(formularioImovelProvider);
    final formModel = ref.read(formularioImovelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Imóvel'),
      ),
      body: Stack(
        children: [
          Form(
            key: GlobalKey<FormState>(),
            child: ListView(padding: const EdgeInsets.all(16.0), children: [
                CampoSimplesTextform(
                    controller: formState.nomeController,
                    rotulo: 'Nome',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, preencha o campo Nome';
                      }
                      return null;
                    },
                  ),
              const SizedBox(height: 20),
              CampoSimplesTextform(
                controller: formState.descricaoController,
                rotulo: 'Descrição',
                textoLongo: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, preencha o campo Descrição';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Text('Endereço', style: theme.textTheme.displayLarge),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CampoSimplesTextform(
                      controller: formState.ruaController,
                      rotulo: 'Logradouro',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha o campo Logradouro';
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CampoSimplesTextform(
                      controller: formState.numeroController,
                      rotulo: 'Número',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha o campo Número';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CampoSimplesTextform(
                controller: formState.bairroController,
                rotulo: 'Bairro',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, preencha o campo Bairro';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              CampoSimplesTextform(
                controller: formState.cepController,
                rotulo: 'CEP',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, preencha o campo CEP';
                  }
                  return null;
                },
              ),
            ]),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PadraoTextoButton(
                  funcao: () {
                    Navigator.pop(context);
                  },
                  texto: 'Cancelar',
                  cor: Colors.black,
                  corFundo: surfaceColor,
                ),
                PadraoTextoButton(
                  funcao: () async {
                    if (formState.nomeController.text.isNotEmpty &&
                        formState.nomeController.text.isNotEmpty) {
                      bool sucesso = await formModel.salvarImovel();
                      ref
                          .read(imoveisProvider.notifier)
                          .carregarListaImoveis();
                      if (sucesso) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Formulário salvo com sucesso!')),
                        );
                        Navigator.pop(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  'Erro ao salvar o formulário. Tente novamente.')),
                        );
                      }
                    }
                  },
                  texto: 'Salvar',
                  corFundo: accentPrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
