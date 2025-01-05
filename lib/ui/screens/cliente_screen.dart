import 'package:flutter/material.dart';
import 'package:trabalho3/ui/widgets/titulo_descricao_text.dart';
import 'package:trabalho3/data/models/contato.dart';
import 'package:intl/intl.dart';

class ClienteScreen extends StatelessWidget {
  final String nome;
  final String cpf;
  final Contato contato;
  final DateTime dataNascimento;

  const ClienteScreen({
    super.key,
    required this.nome,
    required this.cpf,
    required this.contato,
    required this.dataNascimento,
  });

    String formatDate(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nome),
      ),
      body: Stack(
        children: [
          Form(
            child: ListView(
              padding: const EdgeInsets.all(20.0),
              children: [
                TituloDescricaoText(titulo: 'Nome', descricao: nome),
                const SizedBox(height: 20),
                TituloDescricaoText(titulo: 'CPF', descricao: cpf),
                const SizedBox(height: 20),
                TituloDescricaoText(
                  titulo: 'Data de Nascimento',
                  descricao: formatDate(dataNascimento),
                ),
                const SizedBox(height: 20),
                TituloDescricaoText(
                  titulo: 'Contato',
                  descricao: '${contato.dDD} ${contato.numero}',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
