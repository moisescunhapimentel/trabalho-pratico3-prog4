import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/ui/screens/cliente_screen.dart';
import 'package:trabalho3/ui/screens/formulario_cliente_screen.dart';
import 'package:trabalho3/ui/widgets/icone_flutuante_button.dart';
import 'package:trabalho3/ui/widgets/cliente_item_card.dart';
import 'package:trabalho3/providers/cliente_providers.dart';

class ClientesScreen extends ConsumerWidget {
  const ClientesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clientesAsyncValue = ref.watch(clientesProvider); 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
      ),
      body: clientesAsyncValue.when(
        data: (clientes) {
          return ListView.builder(
            itemCount: clientes.length,
            itemBuilder: (context, index) {
              final cliente = clientes[index];
              return ClienteItemCard(
                nome: cliente.nome, 
                funcao: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClienteScreen(
                          clienteId: cliente.id,
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, stack) => Center(child: Text('Erro: $e')),
      ),
      floatingActionButton: IconeFlutuanteButton(
        funcao: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormularioClienteScreen()),
          );
        },
      ),
    );
  }
}
