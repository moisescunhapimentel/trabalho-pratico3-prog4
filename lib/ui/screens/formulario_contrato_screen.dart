import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabalho3/ui/widgets/campo_simples_textform.dart';
import 'package:trabalho3/ui/widgets/padrao_texto_button.dart';
import 'package:trabalho3/ui/widgets/seletor_button.dart';
import 'package:trabalho3/ui/models/formulario_contrato_model.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';

class FormularioContratoScreen extends StatefulWidget {
  const FormularioContratoScreen({super.key});

  @override
  State<FormularioContratoScreen> createState() => _FormularioContratoScreenState();
}

class _FormularioContratoScreenState extends State<FormularioContratoScreen> {
  @override
  Widget build(BuildContext context) {
    final formModel = Provider.of<FormularioContratoModel>(context);

    final ThemeData theme = Theme.of(context);
    final Color accentPrimary = theme.colorScheme.primary;
    final Color surfaceColor = theme.colorScheme.surface;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contrato'),
      ),
      body: Stack(
        children: [
          Form(
            key: formModel.formKey,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                SeletorButton(
                  opcao1: 'Mensal',
                  opcao2: 'Anual',
                  selectedOption: formModel.intervaloPagamento.name,
                  funcao: (option) {
                    formModel.updateIntervaloPagamento(TipoIntervaloExtension.byName(option));
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: formModel.dataInicioController,
                  readOnly: true,
                  decoration: const InputDecoration(
                    labelText: 'Data de Início',
                    border: OutlineInputBorder(),
                  ),
                  onTap: () {
                    formModel.selecionarDataInicio(context);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, selecione a data de início';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: formModel.dataFimController,
                  readOnly: true,
                  decoration: const InputDecoration(
                    labelText: 'Data de Fim',
                    border: OutlineInputBorder(),
                  ),
                  onTap: () {
                    formModel.selecionarDataFim(context);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, selecione a data de fim';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CampoSimplesTextform(
                  controller: formModel.diaPagamentoController,
                  rotulo: 'Dia de Pagamento',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o dia de pagamento';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                if (formModel.intervaloPagamento == TipoIntervalo.anual)
                  CampoSimplesTextform(
                    controller: formModel.mesPagamentoController,
                    rotulo: 'Mês de Pagamento',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira o mês de pagamento';
                      }
                      return null;
                    },
                  ),
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
                    Navigator.pop(context);
                  },
                  texto: 'Cancelar',
                  cor: Colors.black,
                  corFundo: surfaceColor,
                ),
                PadraoTextoButton(
                  funcao: () {
                    if (formModel.formKey.currentState!.validate()) {
                      formModel.formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Formulário salvo com sucesso!')),
                      );
                      Navigator.pop(context);
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
