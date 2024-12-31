import 'package:flutter/material.dart';
import 'package:trabalho3/ui/widgets/icone_flutuante_button.dart';

class ImoveisScreen extends StatelessWidget {
  const ImoveisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Imóveis'),
        ),
        body: const Column(
        ),
        floatingActionButton: IconeFlutuanteButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      );
  }
}