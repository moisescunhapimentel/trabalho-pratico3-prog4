import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';
import 'package:trabalho3/ui/widgets/campo_simples_textform.dart';
import 'package:trabalho3/ui/widgets/padrao_texto_button.dart';
import 'package:trabalho3/ui/widgets/seletor_button.dart';

class FormularioImovelScreen extends StatefulWidget {
  const FormularioImovelScreen({super.key});

  @override
  State<FormularioImovelScreen> createState() => _FormularioImovelScreenState();
}

class _FormularioImovelScreenState extends State<FormularioImovelScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();
  final TextEditingController _ruaController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _bairroController = TextEditingController();
  final TextEditingController _cepController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String _selectedOption = 'Sobre'; // p/ controle aba selecionada
  //final Map<String, dynamic> _formData = {}; // p/ armazenar dados preenchidos

  void _updateOption(String option) {
    setState(() {
      _selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imóvel'),
      ),
      body: Stack(
        children: [
          Form(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SeletorButton(
                      opcao1: 'Sobre',
                      opcao2: 'Cômodos',
                      funcao: _updateOption),
                  const SizedBox(height: 20),
                  if (_selectedOption == 'Sobre') ...[
                    CampoSimplesTextform(
                        controller: _nomeController, rotulo: 'nome'),
                    const SizedBox(height: 20),
                    CampoSimplesTextform(
                        controller: _descricaoController,
                        rotulo: 'descricao',
                        textoLongo: true),
                    const SizedBox(height: 20),
                    Text('Endereço',
                        style: Theme.of(context).textTheme.displayLarge),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: CampoSimplesTextform(
                                controller: _ruaController,
                                rotulo: 'Logradouro')),
                        Expanded(
                            flex: 1,
                            child: CampoSimplesTextform(
                                controller: _numeroController,
                                rotulo: 'Número')),
                      ],
                    ),
                    const SizedBox(height: 20),
                    CampoSimplesTextform(
                        controller: _bairroController, rotulo: 'Bairro'),
                    const SizedBox(height: 20),
                    CampoSimplesTextform(
                        controller: _cepController, rotulo: 'CEP'),
                  ] else if (_selectedOption == 'Cômodos') ...[
                    Text('Cômodos',
                        style: Theme.of(context).textTheme.displayLarge),
                    const SizedBox(height: 20),
                    const Text('Em breve...'),
                  ],
                ],
              ),
            ),
          ),
          //const Spacer(),
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.bottomCenter,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PadraoTextoButton(
                funcao: () {
                  Navigator.pop(context);
                },
                texto: 'Cancelar',
                cor: Colors.black,
                corFundo: highlightNeutral,
              ),
              PadraoTextoButton(
                funcao: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                texto: 'Salvar',
                corFundo: accentPrimary,
              ),
            ],
          )
            
            ),
         
        ],
      ),
    );
  }
}