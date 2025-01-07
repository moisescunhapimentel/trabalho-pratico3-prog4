import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/ui/widgets/contrato_item_card.dart';
import 'package:trabalho3/providers/cliente_providers.dart';
import 'package:trabalho3/ui/widgets/titulo_descricao_text.dart';

class ClienteScreen extends ConsumerWidget {
  final int clienteId;

  const ClienteScreen({
    super.key,
    required this.clienteId,
  });

  String formatDate(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clienteAsyncValue = ref.watch(clienteProvider(clienteId));

    return Scaffold(
      appBar: AppBar(
        title: Text('Cliente $clienteId'),
      ),
      body: clienteAsyncValue.when(
        data: (cliente) {
          if (cliente == null) {
            return const Center(child: Text('Cliente não encontrado.'));
          }

          return ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              TituloDescricaoText(titulo: 'Nome', descricao: cliente.nome),
              const SizedBox(height: 20),
              TituloDescricaoText(titulo: 'CPF', descricao: cliente.cPF),
              const SizedBox(height: 20),
              TituloDescricaoText(
                titulo: 'Data de Nascimento',
                descricao: formatDate(cliente.dataNascimento),
              ),
              const SizedBox(height: 20),
              TituloDescricaoText(
                titulo: 'Contato',
                descricao: '${cliente.contato.dDD} ${cliente.contato.numero}',
              ),
              const SizedBox(height: 20),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) =>
            Center(child: Text('Erro ao carregar cliente: $error')),
      ),
    );
  }
}
