import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/providers/cliente_providers.dart';
import 'package:trabalho3/ui/widgets/campo_simples_textform.dart';
import 'package:trabalho3/ui/widgets/padrao_texto_button.dart';

class FormularioClienteScreen extends ConsumerWidget {
  const FormularioClienteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formModel = ref.watch(formularioClienteProvider.notifier);
    final formState = ref.watch(formularioClienteProvider);

    final ThemeData theme = Theme.of(context);
    final Color accentPrimary = theme.colorScheme.primary;
    final Color surfaceColor = theme.colorScheme.surface;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cliente'),
      ),
      body: Stack(
        children: [
          Form(
            key: GlobalKey<FormState>(),
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const SizedBox(height: 20),
                CampoSimplesTextform(
                  controller: formState.nomeController,
                  rotulo: 'Nome',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CampoSimplesTextform(
                  controller: formState.cpfController,
                  rotulo: 'CPF',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o CPF';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: formState.telefoneController,
                  decoration: const InputDecoration(
                    labelText: 'Telefone',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o telefone';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: formState.dataNascimentoController,
                  readOnly: true,
                  decoration: const InputDecoration(
                    labelText: 'Data de Nascimento',
                    border: OutlineInputBorder(),
                  ),
                  onTap: () {
                    formModel.selecionarData(
                        context); 
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, selecione a data de nascimento';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PadraoTextoButton(
                  funcao: () {
                    formModel.clearForm(); 
                    Navigator.pop(context);
                  },
                  texto: 'Cancelar',
                  cor: Colors.black,
                  corFundo: surfaceColor,
                ),
                PadraoTextoButton(
                  funcao: () async {
                    if (formState.nomeController.text.isNotEmpty &&
                        formState.cpfController.text.isNotEmpty) {
                      bool sucesso = await formModel.salvarCliente();
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
