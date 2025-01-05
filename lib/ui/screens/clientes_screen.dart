import 'package:flutter/material.dart';
import 'package:trabalho3/ui/screens/cliente_screen.dart';
import 'package:trabalho3/ui/screens/formulario_cliente_screen.dart';
import 'package:trabalho3/ui/widgets/icone_flutuante_button.dart';
import 'package:trabalho3/ui/widgets/cliente_item_card.dart';
import 'package:trabalho3/data/models/contato.dart';

class ClientesScreen extends StatelessWidget {
  const ClientesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Clientes'),
        ),
        body: ListView(
          children: [
            ClienteItemCard(
              funcao: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClienteScreen(
                  nome: 'Miriam',
                  cpf: '02',
                  contato: Contato(numero: '123456789', dDD: '11'),
                  dataNascimento: DateTime(1990, 5, 20),
                ),),
                );
              },
            ),
          ],
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