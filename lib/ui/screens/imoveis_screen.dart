import 'package:flutter/material.dart';
import 'package:trabalho3/ui/widgets/icone_flutuante_button.dart';
import 'package:trabalho3/ui/widgets/imovel_item_card.dart';
import 'package:trabalho3/ui/screens/formulario_imovel_screen.dart';
import 'package:trabalho3/ui/widgets/menu_suspenso_button.dart';

class ImoveisScreen extends StatelessWidget {
  const ImoveisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imóveis'),
      ),
      body: ListView(
        children: [
          ImovelItemCard(
            nomeImovel: 'Casa em João Pessoa',
            rua: 'Rua do alegria',
            numImovel: '123',        
          ),
          ImovelItemCard(
            nomeImovel: 'Casa em João Pessoa',
            rua: 'Rua do alegria',
            numImovel: '123',       
          ),
          ImovelItemCard(
            nomeImovel: 'Casa em João Pessoa',
            rua: 'Rua do alegria',
            numImovel: '123',
          ),
        ],
      ),
      floatingActionButton: IconeFlutuanteButton(
        funcao: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormularioImovelScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
