import 'package:flutter/material.dart';
import 'package:trabalho3/ui/screens/formulario_imovel_screen.dart';
import 'package:trabalho3/ui/widgets/icone_flutuante_button.dart';

class ClientesScreen extends StatelessWidget {
  const ClientesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Clientes'),
        ),
        body: const Column(
        ),
        floatingActionButton: IconeFlutuanteButton(
          funcao: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormularioImovelScreen()),
          );
          },
        ),);
  }
}