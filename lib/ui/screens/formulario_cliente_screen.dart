import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:trabalho3/ui/widgets/campo_simples_textform.dart';
import 'package:trabalho3/ui/widgets/padrao_texto_button.dart';

class FormularioClienteScreen extends StatefulWidget {
  const FormularioClienteScreen({super.key});

  @override
  State<FormularioClienteScreen> createState() => _FormularioClienteScreenState();
}

class _FormularioClienteScreenState extends State<FormularioClienteScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _dataNascimentoController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final _telefoneFormatter = MaskTextInputFormatter(mask: '(##) #####-####', filter: { "#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
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
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const SizedBox(height: 20),
                CampoSimplesTextform(
                  controller: _nomeController,
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
                  controller: _cpfController,
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
                  controller: _telefoneController,
                  decoration: const InputDecoration(
                    labelText: 'Telefone',
                    border: OutlineInputBorder(),
                  ),
                  inputFormatters: [_telefoneFormatter],
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
                  controller: _dataNascimentoController,
                  readOnly: true,
                  decoration: const InputDecoration(
                    labelText: 'Data de Nascimento',
                    border: OutlineInputBorder(),
                  ),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );

                    if (pickedDate != null) {
                      setState(() {
                        _dataNascimentoController.text = pickedDate.toLocal().toString().split(' ')[0];
                      });
                    }
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
                    Navigator.pop(context);
                  },
                  texto: 'Cancelar',
                  cor: Colors.black,
                  corFundo: surfaceColor,
                ),
                PadraoTextoButton(
                  funcao: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
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